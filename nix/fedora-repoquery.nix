{
  "0.1.0" = {
    sha256 = "d08b8eb2504992200cea65095103045da360b64f4e8cda40862df18c5f14a6b1";
    revisions = {
      r0 = {
        nix = import ../hackage/fedora-repoquery-0.1.0-r0-60ee0057de5bed04559bcc4a44c1c4e72654eda12d7fc938c2b7b8492ca22ddd.nix;
        revNum = 0;
        sha256 = "60ee0057de5bed04559bcc4a44c1c4e72654eda12d7fc938c2b7b8492ca22ddd";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "460e8accc6c7b985fa2b17b87c900d8378008ab0e2c6320a455dd585d2e772ed";
    revisions = {
      r0 = {
        nix = import ../hackage/fedora-repoquery-0.2-r0-cb61e54fbd29bbd59eec4515473b3ce148d53c12b598623270085d6508868bdf.nix;
        revNum = 0;
        sha256 = "cb61e54fbd29bbd59eec4515473b3ce148d53c12b598623270085d6508868bdf";
        };
      default = "r0";
      };
    };
  }