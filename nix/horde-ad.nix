{
  "0.1.0.0" = {
    sha256 = "ced79de8efccc6b81682adcae5fd091e8b55dc06f2f1dbea0dafe1ecc701e411";
    revisions = {
      r0 = {
        nix = import ../hackage/horde-ad-0.1.0.0-r0-c6ae57dcd633eb65873632e2a345cae61d28d12aad7366458af446f99e11fe47.nix;
        revNum = 0;
        sha256 = "c6ae57dcd633eb65873632e2a345cae61d28d12aad7366458af446f99e11fe47";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "597a72866dd728b53c6a9bc0de275affb98fc33aa2eaa32a8368cbeae667506a";
    revisions = {
      r0 = {
        nix = import ../hackage/horde-ad-0.2.0.0-r0-a169beac93ba4aa8d5b638f50816e83048724b6b790fc0abb01f687a9ae47912.nix;
        revNum = 0;
        sha256 = "a169beac93ba4aa8d5b638f50816e83048724b6b790fc0abb01f687a9ae47912";
      };
      default = "r0";
    };
  };
}