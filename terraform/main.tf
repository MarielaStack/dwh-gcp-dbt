terraform{
    required_providers{
        google = { source = "hashicorp/google", version = "~> 4.0" }
    }
}

provider "google" {
    project = "curso-gcp-dbt-499602"
    region  = "southamerica-east1"
}

#Dataset para los datos crudos (ingesta)
resource "google_bigquery_dataset" "raw_ecommerce"{
    dataset_id                  = "raw_ecommerce"
    location                    = "southamerica-east1"
    delete_contents_on_destroy  = true
}

#Dataset para desarrollo dbt
resource "google_bigquery_dataset" "dbt_dev"{
    dataset_id                  = "dbt_dev"
    location                    = "southamerica-east1"
    delete_contents_on_destroy  = true    
}

