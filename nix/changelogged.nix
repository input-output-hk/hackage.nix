{
  "0.1.0" = {
    sha256 = "929a59b1874ac2401d73423c11932c8784e236d400427bd5e6154eb2260f2ecf";
    revisions = {
      r0 = {
        nix = import ../hackage/changelogged-0.1.0-r0-c603338312f63f296400627191353110bc66e63a6111a68c0c2c26b84ee0cc95.nix;
        revNum = 0;
        sha256 = "c603338312f63f296400627191353110bc66e63a6111a68c0c2c26b84ee0cc95";
        };
      default = "r0";
      };
    };
  "0.2.0" = {
    sha256 = "c20de0985f44c9ff073c560c7d2ef58b53d68a861eee2784709dff404cf77117";
    revisions = {
      r0 = {
        nix = import ../hackage/changelogged-0.2.0-r0-233fafa5dc8816217f3b340b49195b8dd3e07a6336afc1aa4928787a535d0bac.nix;
        revNum = 0;
        sha256 = "233fafa5dc8816217f3b340b49195b8dd3e07a6336afc1aa4928787a535d0bac";
        };
      r1 = {
        nix = import ../hackage/changelogged-0.2.0-r1-25ef25005f3b0e2a398f1671d30ce236e8e6ea1d60b78d183fd3c335ab7a864e.nix;
        revNum = 1;
        sha256 = "25ef25005f3b0e2a398f1671d30ce236e8e6ea1d60b78d183fd3c335ab7a864e";
        };
      default = "r1";
      };
    };
  }