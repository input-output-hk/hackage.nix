{
  "1.0.0.0" = {
    sha256 = "2df12238cad97268ecc65e688644e8deb6ab980f429e4809c27984ac3adff703";
    revisions = {
      r0 = {
        nix = import ../hackage/deltaq-1.0.0.0-r0-df581e6fb44a15fc859af63e96a1cedaca2dd26fbc3519608c57618a44dd10de.nix;
        revNum = 0;
        sha256 = "df581e6fb44a15fc859af63e96a1cedaca2dd26fbc3519608c57618a44dd10de";
      };
      r1 = {
        nix = import ../hackage/deltaq-1.0.0.0-r1-e13fc154b1ae9d3c9393dcfa4ba38c6d6de117f1fc72d3353b3392c10d9e94c4.nix;
        revNum = 1;
        sha256 = "e13fc154b1ae9d3c9393dcfa4ba38c6d6de117f1fc72d3353b3392c10d9e94c4";
      };
      default = "r1";
    };
  };
  "1.0.1.0" = {
    sha256 = "4e223ca0da2aa39b748f34efb0809fa8ac7ed8522b0f2e876ba731b36cd69efd";
    revisions = {
      r0 = {
        nix = import ../hackage/deltaq-1.0.1.0-r0-d6bc0c0af88d09e1fe6c7e77cbdd08f2edc4d1a90df7f4fbe54745bd09103687.nix;
        revNum = 0;
        sha256 = "d6bc0c0af88d09e1fe6c7e77cbdd08f2edc4d1a90df7f4fbe54745bd09103687";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "4a92650b4ebba0f4a3eb8bced447bbc9733b83d6cd0fcafdddb7d739630dc719";
    revisions = {
      r0 = {
        nix = import ../hackage/deltaq-1.1.0.0-r0-f01476d5e538fc32ffe619d333022909e7252224666d3292916047b5e9c7ac1c.nix;
        revNum = 0;
        sha256 = "f01476d5e538fc32ffe619d333022909e7252224666d3292916047b5e9c7ac1c";
      };
      default = "r0";
    };
  };
}