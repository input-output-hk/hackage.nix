{
  "0.1.1" = {
    sha256 = "debc23b53f5f61a0c18774aec415ae005d340c25ec6eaefde3a4a167bc09c5a1";
    revisions = {
      r0 = {
        nix = import ../hackage/WordNet-0.1.1-r0-8d5f68402040ab2b6aa261a66b608be739d84d12a8e8a3003d9cf5a2ad3c48fb.nix;
        revNum = 0;
        sha256 = "8d5f68402040ab2b6aa261a66b608be739d84d12a8e8a3003d9cf5a2ad3c48fb";
      };
      r1 = {
        nix = import ../hackage/WordNet-0.1.1-r1-cf4d795db2001c2306cdb7dbed7920097cb6ff4855ab4a14f642a4487089c9f4.nix;
        revNum = 1;
        sha256 = "cf4d795db2001c2306cdb7dbed7920097cb6ff4855ab4a14f642a4487089c9f4";
      };
      default = "r1";
    };
  };
  "0.1.2" = {
    sha256 = "b1ecdc92b7d71a92b8544bdf6a5419ebfec2ac13e268329e73a4b6d35ecccaa8";
    revisions = {
      r0 = {
        nix = import ../hackage/WordNet-0.1.2-r0-93f65cc32c965359e73ea912c8c098d41e85eb5fb0767abf9dc335cdc4c51703.nix;
        revNum = 0;
        sha256 = "93f65cc32c965359e73ea912c8c098d41e85eb5fb0767abf9dc335cdc4c51703";
      };
      r1 = {
        nix = import ../hackage/WordNet-0.1.2-r1-0ee4ab6bb39976698a168e55c08789abb41f005b363ffcb6bb0d42b448f0b059.nix;
        revNum = 1;
        sha256 = "0ee4ab6bb39976698a168e55c08789abb41f005b363ffcb6bb0d42b448f0b059";
      };
      default = "r1";
    };
  };
  "1.0.0" = {
    sha256 = "1928c5c50434760cbe20a3a0f308a2b0c9e6125c05254fd272e8e264181cd8fe";
    revisions = {
      r0 = {
        nix = import ../hackage/WordNet-1.0.0-r0-556232da931adaf01435b18bd4dd97ec295d6b99e84f4d8ddb766c3f48933d65.nix;
        revNum = 0;
        sha256 = "556232da931adaf01435b18bd4dd97ec295d6b99e84f4d8ddb766c3f48933d65";
      };
      r1 = {
        nix = import ../hackage/WordNet-1.0.0-r1-59cb6517e1ea5fe67870db19883c99c1f19b4e2eb37cec9249ba3dca30212cc8.nix;
        revNum = 1;
        sha256 = "59cb6517e1ea5fe67870db19883c99c1f19b4e2eb37cec9249ba3dca30212cc8";
      };
      default = "r1";
    };
  };
  "1.1.0" = {
    sha256 = "5380d6e5b9c36d2b34437d01b9f0fff49fc07b2788f45e04d7df291867ef842c";
    revisions = {
      r0 = {
        nix = import ../hackage/WordNet-1.1.0-r0-c8719cf1a64f88e0ee629a34835d2086e380ffe8058e84b8a895bc3e774972be.nix;
        revNum = 0;
        sha256 = "c8719cf1a64f88e0ee629a34835d2086e380ffe8058e84b8a895bc3e774972be";
      };
      r1 = {
        nix = import ../hackage/WordNet-1.1.0-r1-15605f3b48cadb39eb43dd87138e3cd3164e47c49b860b9656168b6f732350cc.nix;
        revNum = 1;
        sha256 = "15605f3b48cadb39eb43dd87138e3cd3164e47c49b860b9656168b6f732350cc";
      };
      r2 = {
        nix = import ../hackage/WordNet-1.1.0-r2-1866659ce783bf3f1dd8572dbf85b70f21ef76abcc1a4852d5b19f68d78f2522.nix;
        revNum = 2;
        sha256 = "1866659ce783bf3f1dd8572dbf85b70f21ef76abcc1a4852d5b19f68d78f2522";
      };
      default = "r2";
    };
  };
}