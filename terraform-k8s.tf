# provider "kubernetes" {
#   host = "https://18.206.249.44:6443"
#   client_certificate     = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURDakNDQWZLZ0F3SUJBZ0lJSUtiNm9SL3FyRVF3RFFZSktvWklodmNOQVFFTEJRQXdFakVRTUE0R0ExVUUKQXhNSGEzVmlaUzFqWVRBZUZ3MHlNekE1TURJd05USXpNVGxhRncwek16QTRNekF3TmpFNE16VmFNQzR4RnpBVgpCZ05WQkFvVERuTjVjM1JsYlRwdFlYTjBaWEp6TVJNd0VRWURWUVFERXdwcmRXSmxMV0ZrYldsdU1JSUJJakFOCkJna3Foa2lHOXcwQkFRRUZBQU9DQVE4QU1JSUJDZ0tDQVFFQTNzUU5Fek9wTGREd3lQRnA2eStjRmswaUxxR2gKS0ZLaDVEMEVtdFpUVGRPVVo5NmxTdUtGcnFtU1Z6TDNISFpOdXRwSzR3MVppbDQrM2dKa2RGMmlXUVFlWVBtbgp5QTNJOGdpdlNsZHVheFg2SVpyUkg4OU41MjhiMWlvSGVjazVSNklHdVkxM04xZDlDRUFIMUJDWG9nMWZoUVd3CmdTb0ZHc2paMVR0SVY4SnBlbzBWcFU4bU5CSFU5ait1amlmY3FvdmFKRlp5cm5mYVpJL0R3ZnlMOEZrTENlSTAKb3l4NXRSdDlUQ0pwbTNLRGlxaDBSMHdIRkd2cTZYWkZnMkR5UXVmd0tlZEhaTDRDVTJMOUF1UFZGNXNWNTVDcApTSURQNUkwZEtvL2g4YStXUzFuQlhBS2JuWXlGRUNhMWF2MlV6VHlJNXZKSFhtUmZxYllHaXZrcHpRSURBUUFCCm8wZ3dSakFPQmdOVkhROEJBZjhFQkFNQ0JhQXdFd1lEVlIwbEJBd3dDZ1lJS3dZQkJRVUhBd0l3SHdZRFZSMGoKQkJnd0ZvQVVmL2l1R09iTWFQODcreWZnbU5iem5JWFMxbDR3RFFZSktvWklodmNOQVFFTEJRQURnZ0VCQUszYgpvbThLbHVCeHJPbTlpNmFmekV3TG1YemlXOUhGTU1zZVR6dnp3OUxVTTV1YUIyTGd1VURSZ0NVQk81L2JPN0NNCmt2dDVYdmNMNndPbVdMN1FvZktYN1VITmZvRTNwc0huOWhXa3lvMSs5MHhLN2dtenM2NnZwZ3pKOVNPRTRwT08KV0tQYnJ1dzJlVWh5Ym1oMU4vSmVWaGlEVHE0SlF3RklldkNtZklodXJuUGhsYWlMdXZwYngydEduSTdZMldiSgoyYURsVzVySVQ0Z3pqR0JLbHk3OXQrR2c2OTFUd21uK0VVSjNzK1Z3cm9ON0Q0dENGU1pwVXZLS3lKSjJlTmVTClpxUGpVcXRRN0lhRGUzTUk1TWNKUnByNG5KcW9QVkFXb2g0Mi8xR2c0QlBWVE5jL0c2YmJPcVdzb3V4SXFjMDUKTnlEWkVSdVFNTENlVUd5MGFvMD0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
#   client_key             = "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcFFJQkFBS0NBUUVBM3NRTkV6T3BMZER3eVBGcDZ5K2NGazBpTHFHaEtGS2g1RDBFbXRaVFRkT1VaOTZsClN1S0ZycW1TVnpMM0hIWk51dHBLNHcxWmlsNCszZ0prZEYyaVdRUWVZUG1ueUEzSThnaXZTbGR1YXhYNklaclIKSDg5TjUyOGIxaW9IZWNrNVI2SUd1WTEzTjFkOUNFQUgxQkNYb2cxZmhRV3dnU29GR3NqWjFUdElWOEpwZW8wVgpwVThtTkJIVTlqK3VqaWZjcW92YUpGWnlybmZhWkkvRHdmeUw4RmtMQ2VJMG95eDV0UnQ5VENKcG0zS0RpcWgwClIwd0hGR3ZxNlhaRmcyRHlRdWZ3S2VkSFpMNENVMkw5QXVQVkY1c1Y1NUNwU0lEUDVJMGRLby9oOGErV1MxbkIKWEFLYm5ZeUZFQ2ExYXYyVXpUeUk1dkpIWG1SZnFiWUdpdmtwelFJREFRQUJBb0lCQVFDQjZOMGpKSTUxckpLdQo3TEp6T0NtVGk5bnlUY25ZNVErS05kZFlvTUtsOFV4cm9wak1hZnZCMXh3RGhESTl3L1Fpa3FqM2JsS1ljY3ZCCjFxMVVlMEp4SFFqR1R2RjhwaVZZbUozNUFiSGYrMG9Lak9tRjNuUTFFa091aW9ZZmpLeTl6SXlWYXgxcUJiaGgKdGsyYWF5NnlqNC96MkZTTmpyNjVWd1pKNXErU2xUUHR0RU9TZVhMSGVkbFV4QXl4eGltak9xWWhlWEh1cDczTwpFMm5BdkJkSlA5LzhPM3BGYXN2VHZxK1pCN2NGLzlKTmN4UEZ0bk5jYzhjUlptRFN3SXVHM2hoK1dGNlVOV0FoCkd5ekRvRVpodzBqUGlEVG1LSGNDNXovWk1melozMmtRdUNQQjd6SHRZVzViNkxWUzhIYnI1blVLb3Q2QkxTdkkKS2wyME9lVWhBb0dCQVBwRWNBVTRyZXJwS1h4cHRTLytkSmQrVXpIRUdqZ1BjM2pxQ3lKNUtUaWR5Q0hPaU5yMwowcCs2WE5SOCtWZGR5QW1sRmMwNlc0ZGo1RUdyOXByb25lcmNzZEF1Q2E0OWh0a0pkL0FVc1cxZEt3eE9lQ3gvCjd1bDQ2MzNVdW5KU1A4TG1xU21nSmlwSWZtcmVlZFZ0a2dkcDBFVGJ0M3pxbis2TWJGY1M2OEE1QW9HQkFPUGUKV0dBT0JGMGxZVDVqWkNNZVB4ZmJSV3dTSXZzSXV4ekRPQ1RiWkFWTWxWMGpMM1REc1NKMUhqOW9XcEJ1VVBjdgpmZms5UmI4dEZ1WkNqMEJ4ZW1YbEw0N3BFajgyU1d6VW40NDI2YWZTenQ0SXJuYitacmNrVE0rYlJNNnRycVloCjZERU1vUGhQc2JBKzUyT2p0SkJrdUVjZUk2NVRkUXhEY2x1bVlVNDFBb0dCQUl2WVpEUTJ1TkJVVzY4K3JsVlUKUGJoTmlaVjhmQjRwWENBTHdBOFNYeHRZNTNVa29NcWl3cG9vbkNqTWNOUUYvbnFOT2dLRkFwSkVHazhzRlUvNApmZzI0SnRBcWVaUllveHB5TlFmOXVDdGhiV1dpRDNybVBnMU9XV0RsMXcxOHNrNXBiOHRueHd2SG1JU0ZMdFU1Ck5lbFlrbDEzM1M4N09BVW5pSDZiZndyWkFvR0FQUUdvVTM4dE4rcnNFQkg0RzFiYnVYMWhKci9zVVoxU3l5NlEKOTMwdFdDWGF6MmErSzlyQXIrTC9TQ2FlS0pFQWFFMTB3cWZlNW9JaDRWL3NqbXBUUkxpSmRROTliU01Sb1d1RApsRVdyWk4wUnVXeEZtV0lmQ2VWVUV6a1V3T2pMRzN0MGVMMVMwMmd5d0diMitEdzUrWGFkeDV5UUhQb0hHbE5zCmFKRXcrQWtDZ1lFQTEzck9ROGYvZjZMdzdPa3ZkNCtkTzNxeHhNd3JRYVp5UWxPTEhrVnBJdVB4c2doTFVXSk0KbE41N2x0ZzJyb0dZa1YxaWpGMGxnbU5TNjVZM1p0ZFR0Y3NtemlFbStlUVEvTzlHd0k3VUFzcUZ5QTBxTWpabwpEdUZvSG53dHI5NGNlLzlzNHlSQkpqSnFWdDBVN093VzMzSGZWNE1Yd0htVWF2VjNLYlIrNG1BPQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="
#   cluster_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM0VENDQWNtZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFTTVJBd0RnWURWUVFERXdkcmRXSmwKTFdOaE1CNFhEVEl6TURrd01qQTFNak14T1ZvWERUTXpNRGd6TURBMU1qTXhPVm93RWpFUU1BNEdBMVVFQXhNSAphM1ZpWlMxallUQ0NBU0l3RFFZSktvWklodmNOQVFFQkJRQURnZ0VQQURDQ0FRb0NnZ0VCQU04MU9xUVlTdnhOCnpYQ3d5bjh3S1FlWXZ6U244YzlFTVpXcm5NR3hYN0k3aThzUGx3NnlBZVhGMGhzeGYxelFIcHJ0NDJwQUpKQysKQXd5M1phMU1MeFNUK2RIc0k0NGxmOTV3ZjhIM015cW4xbE15eWI4OWdISllYL2h2ZVBIbks1dWo1aXY2NUNwUApyVXZtdHFQOEk2NTJsOVQzaWlBU2JEbElLWmR3ZFZXYitUK0JSMzYzdCtaSmNqZ01vczJGUGs0MmpZaUFLd1VsCkM4bFlrd0V0SFhWQkFLcXI4ellOeXVGaGx0cDhnbzRsbmJqbzdGZ3lXd2FUMUJPR3FBY2ROb0lrYXNQVnM5MFAKMFg1Mkgzc0RqT0YzbDdEejFmNUg1ZFJVQ1VPNmxnM1p6dHJSZlM3YUtKVStwQnRRZVcxL3ovYmpWRmVYaElLbgpCQ1VTV3J3ZUxoY0NBd0VBQWFOQ01FQXdEZ1lEVlIwUEFRSC9CQVFEQWdLa01BOEdBMVVkRXdFQi93UUZNQU1CCkFmOHdIUVlEVlIwT0JCWUVGSC80cmhqbXpHai9PL3NuNEpqVzg1eUYwdFplTUEwR0NTcUdTSWIzRFFFQkN3VUEKQTRJQkFRQkZwb3BwMnM2eG1aaHRXaW1pY2VOOENMakR3UzRpZVoyY1R3TEtPeVpBMEhydEJtWkYyZkhVQkZHagp6TFdIUVdnY25LdDRTMTk0cWdybkZUNytwdmtYZzIyejdhUzVIMDM3WmlnenpiYUFZckM0S0RUbUdoT2xvZG9lCmpGUWlVdWozNWZaOHBOMmRNZStVQWF5NEp3dlVtSmcwSVNkbzdqSmV6VkdvY3h3Z3hyWk1DZjZmNFcvMithajIKUG5lTks1NWUzbHhZV0NaUE1TMFFpMlJEMXhKdm5hYnhXVnE1NzdRN3JseXkzZFN5UFRidWtIUEpSSW9PTGhsLwpsdlU3R3QxbFB6dXJPaWtOTTdnZ2JsLyt6TThGa2E3RTJET3pHVEJockZyUlZCSXUxV3EzeVBsUUNkbzM1VDhQCkFCWGkwQlY2S2U2dTFPRVg2S3NLcm5tS29SNGUKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
# }

# resource "kubernetes_deployment" "nginx" {
#   metadata {
#     name = "scalable-nginx-example"
#     labels = {
#       App = "ScalableNginxExample"
#     }
#   }  
#   spec {
#     replicas = 2
#     selector {
#       match_labels = {
#         App = "ScalableNginxExample"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           App = "ScalableNginxExample"
#         }
#       }
#       spec {
#         container {
#           image = "nginx:1.7.8"
#           name  = "example"          
#           port {
#             container_port = 80
#           }          
#           resources {
#             limits = {
#               cpu    = "0.5"
#               memory = "512Mi"
#             }
#             requests = {
#               cpu    = "250m"
#               memory = "50Mi"
#             }
#           }
#         }
#       }
#     }
#   }
# }