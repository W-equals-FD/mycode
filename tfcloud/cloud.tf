terraform { 
  cloud { 
    
    organization = "bm_org" 

    workspaces { 
      name = "my-example" 
    } 
  } 
}
