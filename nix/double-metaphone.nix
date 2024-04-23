{
  "0.0.1" = {
    sha256 = "7a73926453e670475b350a7a4474fc871efacec42b150cd767c3ea34426be5d1";
    revisions = {
      r0 = {
        nix = import ../hackage/double-metaphone-0.0.1-r0-887c50ae829633c8f70419b64f6cc6269b649e5b97ffed6137d3cde2fa2782af.nix;
        revNum = 0;
        sha256 = "887c50ae829633c8f70419b64f6cc6269b649e5b97ffed6137d3cde2fa2782af";
      };
      r1 = {
        nix = import ../hackage/double-metaphone-0.0.1-r1-bd8a01ddbe3c8ed20556e0f16f3bced93c6867ac51b859bd91ff8c04bf5fddde.nix;
        revNum = 1;
        sha256 = "bd8a01ddbe3c8ed20556e0f16f3bced93c6867ac51b859bd91ff8c04bf5fddde";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "2c8255787a90709b049fc6c10972bfe74b1678e479b0d5fa6ea1de113be43c97";
    revisions = {
      r0 = {
        nix = import ../hackage/double-metaphone-0.0.2-r0-d6119b317565b6fbc6f32eaf411fca2a2ca9445c57c5b9531041bcd3a384b057.nix;
        revNum = 0;
        sha256 = "d6119b317565b6fbc6f32eaf411fca2a2ca9445c57c5b9531041bcd3a384b057";
      };
      default = "r0";
    };
  };
}