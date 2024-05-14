{
  "2.0" = {
    sha256 = "baceab714adda207e4220cce71520fcb3de19dc74d22523169f1b3132de5c1c3";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-connectparticipant-2.0-r0-cafff7db3f6607a235f358be55b33d77b6c7ff5df66c33a8c30cb0ab0d871ebb.nix;
        revNum = 0;
        sha256 = "cafff7db3f6607a235f358be55b33d77b6c7ff5df66c33a8c30cb0ab0d871ebb";
      };
      r1 = {
        nix = import ../hackage/amazonka-connectparticipant-2.0-r1-84064ed23113d909e0b7ea88d59a9c6ce5f8c267cf7e99f2733cb5ac9105cd0c.nix;
        revNum = 1;
        sha256 = "84064ed23113d909e0b7ea88d59a9c6ce5f8c267cf7e99f2733cb5ac9105cd0c";
      };
      default = "r1";
    };
  };
}