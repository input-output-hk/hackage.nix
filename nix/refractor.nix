{
  "0.0.0.0" = {
    sha256 = "82a03c7a65a84bcf677ec9ca4d603bba57da77d16d0314ce087de47e658eaa90";
    revisions = {
      r0 = {
        nix = import ../hackage/refractor-0.0.0.0-r0-e3e11252795966b363075a61a2ac46a8405ec6cda0346ff8107ce840bb3b3837.nix;
        revNum = 0;
        sha256 = "e3e11252795966b363075a61a2ac46a8405ec6cda0346ff8107ce840bb3b3837";
        };
      default = "r0";
      };
    };
  "0.0.1.0" = {
    sha256 = "ce529c3a1f2252310eeca5bf2a37330cc5ebbd3e1fb142dc6ce73bdd444b4cc7";
    revisions = {
      r0 = {
        nix = import ../hackage/refractor-0.0.1.0-r0-203b6d1a4bc89376c9c0c21247684a74c579aab03db98eec35dad6f12ba19360.nix;
        revNum = 0;
        sha256 = "203b6d1a4bc89376c9c0c21247684a74c579aab03db98eec35dad6f12ba19360";
        };
      r1 = {
        nix = import ../hackage/refractor-0.0.1.0-r1-6a7ee4cea02ee8983e0bb3b3af6cc3f5c4111049dfdf0a24581f9aeb10ed31f3.nix;
        revNum = 1;
        sha256 = "6a7ee4cea02ee8983e0bb3b3af6cc3f5c4111049dfdf0a24581f9aeb10ed31f3";
        };
      default = "r1";
      };
    };
  }