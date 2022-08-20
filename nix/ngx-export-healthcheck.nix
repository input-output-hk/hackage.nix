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
  }