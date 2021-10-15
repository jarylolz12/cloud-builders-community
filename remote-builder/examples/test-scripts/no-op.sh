#!/bin/bash -xe

#   sudo apt-get update
#   sudo apt-get install -y apt-transport-https ca-certificates curl
#   sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
#   echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
#   sudo apt-get update
#   sudo apt-get install -y kubectl

# gcloud container clusters get-credentials blaggo-autopilot-default --region asia-southeast1 --project arvo-project
# kubectl get pods

ls

echo $TEST


#  NOTES:

# 785100718012@cloudbuild.gserviceaccount.com )(default service account)
# Role added: Compute Instance Admin (v1)
# use the VM's service accout in creating the VM
# the VPC and whitelistin of VM's IP addresses will be on terraform


# new IP lists
# 35.198.228.146 - done
# 34.126.113.193
# 35.197.133.243 - done
# 35.240.131.106
# 35.187.237.239 - done
# 34.126.133.170
# 35.198.212.222 - done
# 34.126.145.214
# 35.247.155.3
# 34.126.77.15 - done
# 34.87.83.92
# 34.126.68.250

# Get the major network of an IP address:
# as per observation, every week the ip changes
# but not the first 2 octets
# assumend that first 2 octets are CIDR 16

# Binary computation:
#  1  1   1   1   1  1  1  1
# 128 64  32  16  8  4  2  1

#    35.      187.     237.     239
# 00100011.10111011.11101101.11101111
#    255.     255.     255.     248
# 11111111.11111111.11111111.11111000
# 00100011.10111011.11101101.11101000
#    35.      187.     237.     232


#    35.      198.     212.     222
# 00100011.11000110.11010100.11011110
#    255.     255.     255.     248
# 11111111.11111111.11111111.11111000
# 00100011.11000110.11010100.11011110
#    35.      198.     212.     216


#    35.      198.     228.     146
# 00100011.11000110.11100100.10010010
#    255.     255.     255.     248
# 11111111.11111111.11111111.11111000
# 00100011.11000110.11100100.10010010
#    35.      198.     212.     144


#    35.      197.     133.     243
# 00100011.11000101.10000101.11110011
#    255.     255.     255.     248
# 11111111.11111111.11111111.11111000
# 00100011.11000110.10000101.11110011
#    35.      198.     133.     240


#    34.      126.     77.     15
# 00100010.11111100.01001101.00001111
#    255.     255.     255.     248
# 11111111.11111111.11111111.11111000
# 00100010.11111100.01001101.00001111
#    34.      126.     77.     8


# 35.198.228.146 - done
# 35.197.133.243 - done
# 35.240.131.106
# 35.187.237.239 - done
# 35.198.212.222 - done
# 35.247.155.3




# 34.87.83.92
# 34.126.68.250
# 34.126.77.15 - done
# 34.126.113.193
# 34.126.133.170
# 34.126.145.214
