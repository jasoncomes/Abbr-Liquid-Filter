# abbr

*Converts abbreviations into words, and words into abbreviations. These abbreviations need to be added to the `_config.yml` file for specific site usage.*

### **Setup**

    File: _config.yml
    
    # Abbrevations
    abbreviations:
      AL: Alabama
      AK: Alaska
      AS: American Samoa
      AZ: Arizona
      AR: Arkansas
      CA: California
      CO: Colorado
      CT: Connecticut
      DE: Delaware
      DC: District Of Columbia
      FM: Federated States Of Micronesia
      FL: Florida
      GA: Georgia
      GU: Guam
      HI: Hawaii
      ID: Idaho
      IL: Illinois
      IN: Indiana
      IA: Iowa
      KS: Kansas
      KY: Kentucky
      LA: Louisiana
      ME: Maine
      MH: Marshall Islands
      MD: Maryland
      MA: Massachusetts
      MI: Michigan
      MN: Minnesota
      MS: Mississippi
      MO: Missouri
      MT: Montana
      NE: Nebraska
      NV: Nevada
      NH: New Hampshire
      NJ: New Jersey
      NM: New Mexico
      NY: New York
      NC: North Carolina
      ND: North Dakota
      MP: Northern Mariana Islands
      OH: Ohio
      OK: Oklahoma
      OR: Oregon
      PW: Palau
      PA: Pennsylvania
      PR: Puerto Rico
      RI: Rhode Island
      SC: South Carolina
      SD: South Dakota
      TN: Tennessee
      TX: Texas
      UT: Utah
      VT: Vermont
      VI: Virgin Islands
      VA: Virginia
      WA: Washington
      WV: West Virginia
      WI: Wisconsin
      WY: Wyoming

### Usage

    {{ value | abbr }}

### **Parameters**

- `value` string. required. The value to get from the site abbreviations object variable.

### Return

- string. This will return either the key or value depending on the value given.

## **Examples**

---

### Input

    Jason wishes he didn't live in {{ "SD" | abbr }}.
    Jason wishes he didn't live in {{ "South Dakota" | abbr }}.

### **Output**

    Jason wishes he didn't live in South Dakota.
    Jason wishes he didn't live in SD.
