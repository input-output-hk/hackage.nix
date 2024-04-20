{
  "0.1.0" = {
    sha256 = "d505c7b0f339f6c5e93e92813fb19b3485789049f3536e7590adf0ca98955091";
    revisions = {
      r0 = {
        nix = import ../hackage/symbol-parser-0.1.0-r0-38a6c3ed0d389de9fceda89c2bea7fda44b1d1b16f74525bcc096abbc03eb472.nix;
        revNum = 0;
        sha256 = "38a6c3ed0d389de9fceda89c2bea7fda44b1d1b16f74525bcc096abbc03eb472";
        };
      r1 = {
        nix = import ../hackage/symbol-parser-0.1.0-r1-0d4c9c621d1f7cf6a8bb50baac6443bc4ee839d3a3989bf7b4ea0799fd664cd1.nix;
        revNum = 1;
        sha256 = "0d4c9c621d1f7cf6a8bb50baac6443bc4ee839d3a3989bf7b4ea0799fd664cd1";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "9d3c9ca1c12d2dbfb60e60cc584b882edf0d8b92e9dc969f1493244cdc7454a3";
    revisions = {
      r0 = {
        nix = import ../hackage/symbol-parser-0.2.0-r0-1960c3db57ce32251cfdc6f56b69a4901e080d9b8fae1ad68543d03284a87b8d.nix;
        revNum = 0;
        sha256 = "1960c3db57ce32251cfdc6f56b69a4901e080d9b8fae1ad68543d03284a87b8d";
        };
      default = "r0";
      };
    };
  }