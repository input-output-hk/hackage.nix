{
  "0.1.0.0" = {
    sha256 = "a5e5fb3eb670d60876d5aaf26bd2fe4c29e51a3db1f747b66b45d037c6539b38";
    revisions = {
      r0 = {
        nix = import ../hackage/hls-cabal-plugin-0.1.0.0-r0-a50087d3217963044931c0e37ffc775e39822db6b672013b270b60acad3b4551.nix;
        revNum = 0;
        sha256 = "a50087d3217963044931c0e37ffc775e39822db6b672013b270b60acad3b4551";
        };
      r1 = {
        nix = import ../hackage/hls-cabal-plugin-0.1.0.0-r1-274a00ee584828d28c6f005cc22b64c745723dd3dbfba424e07aeaa51f015d86.nix;
        revNum = 1;
        sha256 = "274a00ee584828d28c6f005cc22b64c745723dd3dbfba424e07aeaa51f015d86";
        };
      r2 = {
        nix = import ../hackage/hls-cabal-plugin-0.1.0.0-r2-140ec73ed508743db7aa132c46f5d2c5e93eb3e9e639ed0ec39c7bbce52afc8f.nix;
        revNum = 2;
        sha256 = "140ec73ed508743db7aa132c46f5d2c5e93eb3e9e639ed0ec39c7bbce52afc8f";
        };
      default = "r2";
      };
    };
  }