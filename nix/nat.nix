{
  "0.1" = {
    sha256 = "200a56dc5fde5047aebef523f5fe8c0f13cbf6bb014eab69840a2fd56f9d0392";
    revisions = {
      r0 = {
        nix = import ../hackage/nat-0.1-r0-9309454b12d99c02859309b8f8bba9c6837be96419f0bec2deeb32fae07734b2.nix;
        revNum = 0;
        sha256 = "9309454b12d99c02859309b8f8bba9c6837be96419f0bec2deeb32fae07734b2";
        };
      r1 = {
        nix = import ../hackage/nat-0.1-r1-180bb67b432cb93823571cb7621f154551e3d4dc8a4e0bc7a421fd5ca2b27f90.nix;
        revNum = 1;
        sha256 = "180bb67b432cb93823571cb7621f154551e3d4dc8a4e0bc7a421fd5ca2b27f90";
        };
      r2 = {
        nix = import ../hackage/nat-0.1-r2-69e5b1c3413ca8964eb18965896466b9e6f5baff5e134be5d89c656301ea597d.nix;
        revNum = 2;
        sha256 = "69e5b1c3413ca8964eb18965896466b9e6f5baff5e134be5d89c656301ea597d";
        };
      default = "r2";
      };
    };
  "0.2" = {
    sha256 = "64d85e96c4bf25b4c0e3dc6ab63633e543630580dedf3698700450ac77b3fb07";
    revisions = {
      r0 = {
        nix = import ../hackage/nat-0.2-r0-72ab3562f049e3471c8cd41cf49f25ec606cf612cac782669684764c1c053999.nix;
        revNum = 0;
        sha256 = "72ab3562f049e3471c8cd41cf49f25ec606cf612cac782669684764c1c053999";
        };
      r1 = {
        nix = import ../hackage/nat-0.2-r1-2368529fcae1efca238cfe85e61fb8e67f7857727421063fc01549fd10179bf0.nix;
        revNum = 1;
        sha256 = "2368529fcae1efca238cfe85e61fb8e67f7857727421063fc01549fd10179bf0";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "c5d58fc25be8a3bd1e996700a66057b2638dac3298715b7d45168b935b6083ec";
    revisions = {
      r0 = {
        nix = import ../hackage/nat-0.3-r0-1cae8ee8eaf875351b68909b2d9433af0d0b98efc0d49e46079076d34ca190b8.nix;
        revNum = 0;
        sha256 = "1cae8ee8eaf875351b68909b2d9433af0d0b98efc0d49e46079076d34ca190b8";
        };
      default = "r0";
      };
    };
  }