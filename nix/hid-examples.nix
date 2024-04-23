{
  "0.1.0.0" = {
    sha256 = "e8d5c3f98b22cccd37c79a96318ac30b1a87c3b0875fd2a5a2fd152e46491175";
    revisions = {
      r0 = {
        nix = import ../hackage/hid-examples-0.1.0.0-r0-eacd29353eb0cbce86a2b4b16e793db8a9b506691ee050194a5fe8ed2500ea60.nix;
        revNum = 0;
        sha256 = "eacd29353eb0cbce86a2b4b16e793db8a9b506691ee050194a5fe8ed2500ea60";
      };
      r1 = {
        nix = import ../hackage/hid-examples-0.1.0.0-r1-179421e3ddbbf06df5d6e753f63e70d1333e5ee9f3fd7e5bc407ee802a7ecc45.nix;
        revNum = 1;
        sha256 = "179421e3ddbbf06df5d6e753f63e70d1333e5ee9f3fd7e5bc407ee802a7ecc45";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "3dc55780bdf1fc9afea5e3145a1d7a0ba58b67538270a6b4a55a44f401d9e6e6";
    revisions = {
      r0 = {
        nix = import ../hackage/hid-examples-0.2-r0-b710b3b914a3066951fd7bbf3ea8891ba7bc53c24e4d4b4efeec0c8a8c4340a1.nix;
        revNum = 0;
        sha256 = "b710b3b914a3066951fd7bbf3ea8891ba7bc53c24e4d4b4efeec0c8a8c4340a1";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "d6fcbb3132f6306f1a8c3920a18ea0ce30fc89d9d07a4078e5f71fd074b5f887";
    revisions = {
      r0 = {
        nix = import ../hackage/hid-examples-0.3-r0-f41f6736a7de6e252d7027181a280d637a3c02872738b8643a0d328815ce2989.nix;
        revNum = 0;
        sha256 = "f41f6736a7de6e252d7027181a280d637a3c02872738b8643a0d328815ce2989";
      };
      default = "r0";
    };
  };
  "0.4" = {
    sha256 = "14cd2c8c7af77a8e4b487d5b0c3e32a6d5f0b395234ea7c2e0b3ab3082a52287";
    revisions = {
      r0 = {
        nix = import ../hackage/hid-examples-0.4-r0-89578ad3f0a5617e5db67398f12bf01e896e2659bb89abd0de23f5e98dd8d0ce.nix;
        revNum = 0;
        sha256 = "89578ad3f0a5617e5db67398f12bf01e896e2659bb89abd0de23f5e98dd8d0ce";
      };
      default = "r0";
    };
  };
  "0.5" = {
    sha256 = "fdf9864c0005b1165593875b822c73798bf49fe23a680ef66e0975a4e96540c3";
    revisions = {
      r0 = {
        nix = import ../hackage/hid-examples-0.5-r0-9c9cbd47e27ed9cd6a737ab37172fc8f363afb84e9955389d1c5339e81182fa4.nix;
        revNum = 0;
        sha256 = "9c9cbd47e27ed9cd6a737ab37172fc8f363afb84e9955389d1c5339e81182fa4";
      };
      default = "r0";
    };
  };
}