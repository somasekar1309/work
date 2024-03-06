# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


region = "southamerica-east1"
vpc_name     = "gke-vpc"
cluster_name = "gke-autopilot-sandbox"
cluster_ip_ranges = {
  pods     = "10.0.0.0/22"
  services = "10.0.4.0/24"
  nodes    = "10.0.6.0/24"
  master   = "10.0.7.0/28"
}
resource_labels = {
  deployed_by = "cloudbuild"
  env         = "sandbox"
  repo        = "click-to-deploy-solutions"
  solution    = "gke-autopilot-hpa"
  terraform   = "true"
}