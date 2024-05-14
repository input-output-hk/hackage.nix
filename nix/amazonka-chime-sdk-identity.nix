{
  "2.0" = {
    sha256 = "24ab443fd1c5a2454bd9b8663dd3f197ca541a4e3f4b1f083db2ba7cf3e8de48";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-chime-sdk-identity-2.0-r0-6225dfe73442ca0591a33dff9ea44328b98aa61ede8ff7316684d627cf970d82.nix;
        revNum = 0;
        sha256 = "6225dfe73442ca0591a33dff9ea44328b98aa61ede8ff7316684d627cf970d82";
      };
      r1 = {
        nix = import ../hackage/amazonka-chime-sdk-identity-2.0-r1-1d263dff09bdf103a30191f9845e36410eb66758ade473b12805dc8d1a1fcd7a.nix;
        revNum = 1;
        sha256 = "1d263dff09bdf103a30191f9845e36410eb66758ade473b12805dc8d1a1fcd7a";
      };
      default = "r1";
    };
  };
}