{
  "0.3.1" = {
    sha256 = "87390d636e6877bfb982ce60b3accef9d73153ea03632cec967526eb8eb96a5f";
    revisions = {
      r0 = {
        nix = import ../hackage/cci-0.3.1-r0-55da8521b219d66aefa0748d8ac631c53a1965ed9886cec2bb131ee0492c4262.nix;
        revNum = 0;
        sha256 = "55da8521b219d66aefa0748d8ac631c53a1965ed9886cec2bb131ee0492c4262";
      };
      r1 = {
        nix = import ../hackage/cci-0.3.1-r1-9604037de386ebd1b75401d8abc3139e34d803af3bdc0ab5a2efd6b816034087.nix;
        revNum = 1;
        sha256 = "9604037de386ebd1b75401d8abc3139e34d803af3bdc0ab5a2efd6b816034087";
      };
      r2 = {
        nix = import ../hackage/cci-0.3.1-r2-164f46e8bb56e7b3f7f6d2b6f6dd1de89c539d9b0c7ff9fcac30fc478fad7288.nix;
        revNum = 2;
        sha256 = "164f46e8bb56e7b3f7f6d2b6f6dd1de89c539d9b0c7ff9fcac30fc478fad7288";
      };
      default = "r2";
    };
  };
}