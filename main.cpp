#include <aws/core/Aws.h>
#include <aws/s3/S3Client.h>
#include <aws/s3/model/PutObjectRequest.h>
#include <aws/core/auth/AWSCredentials.h>
#include <fstream>
#include <iostream>

int main() {
    Aws::SDKOptions options;
    Aws::InitAPI(options);
    {
        const Aws::String access_key = "383a1353-4b64-43dc-af5c-a633566c6c05";
        const Aws::String secret_key = "8e0ddd9527d395d532a2f5983f1b3292fe0b3d2983cb5aef9ed6e4a718d047b6";
        Aws::Auth::AWSCredentials credentials(access_key, secret_key);

        Aws::Client::ClientConfiguration config;
        config.scheme = Aws::Http::Scheme::HTTPS;
        config.endpointOverride = "https://mygameassets.s3.ir-thr-at1.arvanstorage.ir";
        config.region = "default";
        config.verifySSL = false;

        Aws::S3::S3Client s3_client(credentials, config,
                                    Aws::Client::AWSAuthV4Signer::PayloadSigningPolicy::Never,
                                    false);

        Aws::S3::Model::PutObjectRequest object_request;
        object_request.SetBucket("mygameassets");
        object_request.SetKey("uploaded_file.txt");

        const std::string local_path = "C:/Users/MH.Rezaiy_110/Desktop/Corp/ObjectStorage/local_file.txt";

        auto input_data = Aws::MakeShared<Aws::FStream>("PutObjectInputStream",
                                                        local_path.c_str(),
                                                        std::ios_base::in | std::ios_base::binary);

        if (!input_data->good()) {
            std::cerr << "Failed to open file: " << local_path << std::endl;
            Aws::ShutdownAPI(options);
            return 1;
        }

        input_data->seekg(0, std::ios::end);
        auto size = input_data->tellg();
        input_data->seekg(0, std::ios::beg);
        std::cout << "Uploading file of size: " << size << " bytes" << std::endl;

        object_request.SetBody(input_data);

        auto outcome = s3_client.PutObject(object_request);

        if (outcome.IsSuccess()) {
            std::cout << "File uploaded successfully." << std::endl;
        } else {
            std::cerr << "Upload failed\n"
                      << "Error Message: " << outcome.GetError().GetMessage() << "\n"
                      << "Error Type: " << static_cast<int>(outcome.GetError().GetErrorType()) << "\n"
                      << "Exception Name: " << outcome.GetError().GetExceptionName() << std::endl;
        }
    }
    Aws::ShutdownAPI(options);
    return 0;
}
