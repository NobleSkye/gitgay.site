var REG_NONE = NewRegistrar("none");
var DSP_CLOUDFLARE = NewDnsProvider("cloudflare");

D("gitgay.site", REG_NONE, DnsProvider(DSP_CLOUDFLARE),
  // Main domain records
  A("@", "76.76.19.19"), // Replace with your server IP
  A("www", "76.76.19.19"), // Replace with your server IP
  
  // Add CNAME records for subdomains as needed
  // Example subdomain entries would go here
  // CNAME("example", "target.domain.com."),
);
