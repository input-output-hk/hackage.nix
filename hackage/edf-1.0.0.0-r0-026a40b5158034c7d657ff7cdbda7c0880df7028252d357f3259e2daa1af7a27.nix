{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "edf"; version = "1.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "anton@enomsg.org";
      author = "Anton Vorontsov <anton@enomsg.org>";
      homepage = "https://github.com/enomsg/edf";
      url = "";
      synopsis = "EDF parsing library";
      description = "European Data Format (EDF and EDF+) is a file format for storing medical time\nseries, such as EEG, EMG, ECG and so forth. This library allows to read the\ntime series from EDF files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }