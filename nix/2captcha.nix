{
  "0.1.0.0" = {
    sha256 = "2ceb6eabae45b6830b87b1e50f14dfcc4fa478967742e81bb94e3e15735be6a0";
    revisions = {
      r0 = {
        nix = import ../hackage/2captcha-0.1.0.0-r0-23629246a11bdb77f7c40ca08f160410be96dc07180b4512db2969df28dc368f.nix;
        revNum = 0;
        sha256 = "23629246a11bdb77f7c40ca08f160410be96dc07180b4512db2969df28dc368f";
        };
      r1 = {
        nix = import ../hackage/2captcha-0.1.0.0-r1-75aa91abd594b3ff93ece19c8b3144ce26dd8ae9fe2bad7eb4dc5a2f8dc47112.nix;
        revNum = 1;
        sha256 = "75aa91abd594b3ff93ece19c8b3144ce26dd8ae9fe2bad7eb4dc5a2f8dc47112";
        };
      r2 = {
        nix = import ../hackage/2captcha-0.1.0.0-r2-dbf873dc9ab6d59669d0616d93a72dfc123566e7646072099dab879d880a0aaf.nix;
        revNum = 2;
        sha256 = "dbf873dc9ab6d59669d0616d93a72dfc123566e7646072099dab879d880a0aaf";
        };
      default = "r2";
      };
    };
  }