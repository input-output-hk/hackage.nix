{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "hw-succinct"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-succinct#readme";
      url = "";
      synopsis = "Succint datastructures";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hw-balancedparens" or ((hsPkgs.pkgs-errors).buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          (hsPkgs."mono-traversable" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ];
        buildable = true;
        };
      };
    }