terraform { 
  cloud { 
    
    organization = "LBG_Genesys" 

    workspaces { 
      name = "GenesysDemo4" 
    } 
  } 
}

terraform {
  required_version = ">= 1.10.0"
  
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.61.0"
    }
  }
}


variable "oauthclient_id" {
  type        = string
  description = "OAuth client ID for Genesys Cloud"
  sensitive   = true
}

variable "oauthclient_secret" {
  type        = string
  description = "OAuth client secret for Genesys Cloud"
  sensitive   = true
}

variable "aws_region" {
  type        = string
  description = "AWS region for Genesys Cloud provider"
}

provider "genesyscloud" {
  oauthclient_id     = var.oauthclient_id
  oauthclient_secret = var.oauthclient_secret
  aws_region         = var.aws_region
}


