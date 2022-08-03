{
  "1.0" = {
    sha256 = "6658ca91bf6ad454879ceb0536bbcbb5145904b68d89d4dcff89b45cbe878e54";
    revisions = {
      r0 = {
        nix = import ../hackage/para-1.0-r0-aeff75ad852749719c03765b855fb887d246d2758e4382113e29bdc881edce6a.nix;
        revNum = 0;
        sha256 = "aeff75ad852749719c03765b855fb887d246d2758e4382113e29bdc881edce6a";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "7049ac1b81ca8da008605ed2af0385f042481a2522d4831c081a9112715daa50";
    revisions = {
      r0 = {
        nix = import ../hackage/para-1.1-r0-a90eebb063ad70271e6e2a7f00a93e8e8f8b77273f100f39852fbf8301926f81.nix;
        revNum = 0;
        sha256 = "a90eebb063ad70271e6e2a7f00a93e8e8f8b77273f100f39852fbf8301926f81";
        };
      default = "r0";
      };
    };
  }