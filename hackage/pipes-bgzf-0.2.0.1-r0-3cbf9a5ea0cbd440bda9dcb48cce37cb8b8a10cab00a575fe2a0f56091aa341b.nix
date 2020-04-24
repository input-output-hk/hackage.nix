{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-bgzf"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "Blocked GZip";
      description = "Bgzf consists of 64kb maximum sized gzip blocks, and can be inflated using normal zlib functions, but allows for random access";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }