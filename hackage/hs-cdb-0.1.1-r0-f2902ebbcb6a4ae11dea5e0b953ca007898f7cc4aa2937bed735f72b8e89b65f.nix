{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hs-cdb"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Smith";
      author = "Adam Smith";
      homepage = "http://github.com/adamsmasher/hs-cdb";
      url = "";
      synopsis = "A library for reading CDB (Constant Database) files.";
      description = "A library for reading CDB (Constant Database) files.\n\nCDB files are immutable key-value stores, designed for extremely fast and\nmemory-efficient construction and lookup. They can be as large as 4GB, and\nat no point in their construction or use must all data be loaded into\nmemory. CDB files can contain multiple values for a given key.\n\nFor more information on the CDB file format, please see:\n<http://cr.yp.to/cdb.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-mmap" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-mmap"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }