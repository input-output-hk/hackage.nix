{
  "0.1.0.0" = {
    sha256 = "990acb2af9f40ce5e0e59567deabc5dca6a67736afab5ffd8786dbd049b516e0";
    revisions = {
      r0 = {
        nix = import ../hackage/reference-counting-0.1.0.0-r0-b31f8a420af2b2700412719355c6591072c563e88df23fbe88057786928ff139.nix;
        revNum = 0;
        sha256 = "b31f8a420af2b2700412719355c6591072c563e88df23fbe88057786928ff139";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "9b5f9609d06f217ea6a191d8e73c3707133c99a6cb006e0d70aa450a86ba62aa";
    revisions = {
      r0 = {
        nix = import ../hackage/reference-counting-0.2.0.0-r0-cbd7e1daeb90a72f96beaa254ee27f56cd98d50aa96e12d7329c4407d2cc0e51.nix;
        revNum = 0;
        sha256 = "cbd7e1daeb90a72f96beaa254ee27f56cd98d50aa96e12d7329c4407d2cc0e51";
      };
      default = "r0";
    };
  };
}