{
  "1.0" = {
    sha256 = "20224ed6c3e8e3b92dc7631a2c12a3bfc455562c14c53069ca75eb506ac6ae43";
    revisions = {
      r0 = {
        nix = import ../hackage/nondeterminism-1.0-r0-6b25f91b74b3ca88a9fa1351d228509ea10aa504b15334fdd96c5deeb93b863f.nix;
        revNum = 0;
        sha256 = "6b25f91b74b3ca88a9fa1351d228509ea10aa504b15334fdd96c5deeb93b863f";
      };
      r1 = {
        nix = import ../hackage/nondeterminism-1.0-r1-0263a845f5cb75667726bd86cdd6c52e4d1ff8e1132f1c3f2e2f201a5e4165d7.nix;
        revNum = 1;
        sha256 = "0263a845f5cb75667726bd86cdd6c52e4d1ff8e1132f1c3f2e2f201a5e4165d7";
      };
      default = "r1";
    };
  };
  "1.2" = {
    sha256 = "027102c47d48c3eccec104a9b0d2c6ae38d908bbc08d889a98032fc6fa910015";
    revisions = {
      r0 = {
        nix = import ../hackage/nondeterminism-1.2-r0-37251b4082a1b88f8a9329ebfb348f76a2f84728c7c9e8ed0d52bed462012c9a.nix;
        revNum = 0;
        sha256 = "37251b4082a1b88f8a9329ebfb348f76a2f84728c7c9e8ed0d52bed462012c9a";
      };
      r1 = {
        nix = import ../hackage/nondeterminism-1.2-r1-fa8a4d95eff646f80b4b4d77d827ff3423c6678eda6d9f7b699177c4897390f3.nix;
        revNum = 1;
        sha256 = "fa8a4d95eff646f80b4b4d77d827ff3423c6678eda6d9f7b699177c4897390f3";
      };
      default = "r1";
    };
  };
  "1.4" = {
    sha256 = "3037c93b0277037ab51ad8640f72a7975dcf48ba81570640be12d390d7b47dc5";
    revisions = {
      r0 = {
        nix = import ../hackage/nondeterminism-1.4-r0-56598728aff2900c8b1d0002c1bd35420bc25289db094b73fdbfd33ddce8f8a9.nix;
        revNum = 0;
        sha256 = "56598728aff2900c8b1d0002c1bd35420bc25289db094b73fdbfd33ddce8f8a9";
      };
      default = "r0";
    };
  };
  "1.5" = {
    sha256 = "f96a99f59afd6fe31847fb94201651fc47f9c6b76f8a1f2d14805cf17f6d6b2b";
    revisions = {
      r0 = {
        nix = import ../hackage/nondeterminism-1.5-r0-cd4da7bc29adf38b260f1851900317a98f239318ed5bcf908d594f70aa0d7fca.nix;
        revNum = 0;
        sha256 = "cd4da7bc29adf38b260f1851900317a98f239318ed5bcf908d594f70aa0d7fca";
      };
      default = "r0";
    };
  };
}