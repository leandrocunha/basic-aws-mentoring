resource "aws_s3_bucket_object" "object" {
    bucket = "s3-testbucket-leandro"
    key    = "index_terraform.html"
    source = "~/Desktop/index_terraform.html"

    # The filemd5() function is available in Terraform 0.11.12 and later
    # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
    # etag = "${md5(file("path/to/file"))}"
    etag = filemd5("~/Desktop/index_terraform.html")
}