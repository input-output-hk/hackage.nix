{
  "1.5" = {
    sha256 = "96ceb59449f47af5f27cd6a834455681f3cdac8efa77202b040cc1df9d9f1f03";
    revisions = {
      r0 = {
        nix = import ../hackage/ngx-export-healthcheck-1.5-r0-2bcbe797f0ce92dc0e9a723adf091a223275a93e813ff26808e713a4be5e0743.nix;
        revNum = 0;
        sha256 = "2bcbe797f0ce92dc0e9a723adf091a223275a93e813ff26808e713a4be5e0743";
        };
      r1 = {
        nix = import ../hackage/ngx-export-healthcheck-1.5-r1-972283e6eaeb212691aa412aeaae3cbcce4cf5dc552c6469f72b8dd1cf89d017.nix;
        revNum = 1;
        sha256 = "972283e6eaeb212691aa412aeaae3cbcce4cf5dc552c6469f72b8dd1cf89d017";
        };
      default = "r1";
      };
    };
  "1.6" = {
    sha256 = "1e3658bfc55256c2231d2fa60454df780337ea8ea4e17655d2d974585a1d5f41";
    revisions = {
      r0 = {
        nix = import ../hackage/ngx-export-healthcheck-1.6-r0-728205e46446de8bebf4214b2982a0b94880139c22a2eada4628a15f23ae30bd.nix;
        revNum = 0;
        sha256 = "728205e46446de8bebf4214b2982a0b94880139c22a2eada4628a15f23ae30bd";
        };
      default = "r0";
      };
    };
  "1.6.1" = {
    sha256 = "a9a3b9b343ef84b678cfef19d6c1fb9a07cc13bf4704c9694cb9821744322cb1";
    revisions = {
      r0 = {
        nix = import ../hackage/ngx-export-healthcheck-1.6.1-r0-d1640b7ad3c97f5c0a25b910f000cad29cabcb8f609514265ac50aca8c9f41d0.nix;
        revNum = 0;
        sha256 = "d1640b7ad3c97f5c0a25b910f000cad29cabcb8f609514265ac50aca8c9f41d0";
        };
      default = "r0";
      };
    };
  }