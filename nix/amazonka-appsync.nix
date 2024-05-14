{
  "1.6.0" = {
    sha256 = "45f68584a6b202222f69ff913569c4ddca7449014c2ba4623e31acfbe51b717b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appsync-1.6.0-r0-2b77c0f63c48e00972b5ae5838ee8cf22f141628a6d43675ce27a92bf8d3aaec.nix;
        revNum = 0;
        sha256 = "2b77c0f63c48e00972b5ae5838ee8cf22f141628a6d43675ce27a92bf8d3aaec";
      };
      r1 = {
        nix = import ../hackage/amazonka-appsync-1.6.0-r1-282f31adbe2e120900d9b3c4ecc040db4d8a622d0efe47c1a944f8749ad92a83.nix;
        revNum = 1;
        sha256 = "282f31adbe2e120900d9b3c4ecc040db4d8a622d0efe47c1a944f8749ad92a83";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "7a880b69a145af5cb9d5641d813340f183cf72b468219dc664d933098783c15f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appsync-1.6.1-r0-89d1ddd1fe82373b6c67b011886ba6a205f1ab2086081f96a5dedff6b1b13bb0.nix;
        revNum = 0;
        sha256 = "89d1ddd1fe82373b6c67b011886ba6a205f1ab2086081f96a5dedff6b1b13bb0";
      };
      r1 = {
        nix = import ../hackage/amazonka-appsync-1.6.1-r1-98ad27a74064ee9629370c5c4ca47f5bbe7f6dae57dce741ffb2773a5124890f.nix;
        revNum = 1;
        sha256 = "98ad27a74064ee9629370c5c4ca47f5bbe7f6dae57dce741ffb2773a5124890f";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "f998bac3da955691ed7a51a818bbe66e9415dfb095da1345baded1c885f7c422";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appsync-2.0-r0-cb3408044f413ebf5b4aceb6f3340d833a709997a0e8186e956e117520d7bd3b.nix;
        revNum = 0;
        sha256 = "cb3408044f413ebf5b4aceb6f3340d833a709997a0e8186e956e117520d7bd3b";
      };
      r1 = {
        nix = import ../hackage/amazonka-appsync-2.0-r1-aaa43f9ad4151e456fe9821ac6fae9d0fd7cae09290b4d3826a4e733640eec89.nix;
        revNum = 1;
        sha256 = "aaa43f9ad4151e456fe9821ac6fae9d0fd7cae09290b4d3826a4e733640eec89";
      };
      default = "r1";
    };
  };
}