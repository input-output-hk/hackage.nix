{
  "0.1.0.0" = {
    sha256 = "80b7108f6570c5532d7fc6072444f437340d6135dd44f3a8af44388614b77f9c";
    revisions = {
      r0 = {
        nix = import ../hackage/sexp-show-0.1.0.0-r0-b30f848e835640ed577c3e834c29eb1f6a46b72c360f90c431a5b6aaf4d79599.nix;
        revNum = 0;
        sha256 = "b30f848e835640ed577c3e834c29eb1f6a46b72c360f90c431a5b6aaf4d79599";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "c53f5242eb1146d0005b4754c927159705044692286018c78aa6892f7cf0e1c6";
    revisions = {
      r0 = {
        nix = import ../hackage/sexp-show-0.1.1.0-r0-8ce35c8963269dc44728096dea7ce51d97289c42edcd7300789e383060533caf.nix;
        revNum = 0;
        sha256 = "8ce35c8963269dc44728096dea7ce51d97289c42edcd7300789e383060533caf";
      };
      r1 = {
        nix = import ../hackage/sexp-show-0.1.1.0-r1-314f05a4542c657517d485faa31ec23324458782cf0112acda948fb7092a154c.nix;
        revNum = 1;
        sha256 = "314f05a4542c657517d485faa31ec23324458782cf0112acda948fb7092a154c";
      };
      default = "r1";
    };
  };
}