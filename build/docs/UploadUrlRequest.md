---
title: UploadUrlRequest
---
## PureCloud::UploadUrlRequest

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **file_name** | **String** | Name of the file to upload. It must not start with a dot and not end with a forward slash. Whitespace and the following characters are not allowed: \\{^}%`]\&quot;&gt;[~&lt;#| | [optional] |
| **content_md5** | **String** | Content MD-5 of the file to upload | [optional] |
| **signed_url_timeout_seconds** | **Integer** | The number of seconds the presigned URL is valid for (from 1 to 604800 seconds). If none provided, defaults to 600 seconds | [optional] |
| **server_side_encryption** | **String** |  | [optional] |
{: class="table table-striped"}


