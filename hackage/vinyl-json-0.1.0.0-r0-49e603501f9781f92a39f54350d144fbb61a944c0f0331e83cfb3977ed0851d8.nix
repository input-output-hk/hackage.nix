{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-json"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "theo.belaire@gmail.com";
      author = "Theo Belaire";
      homepage = "";
      url = "";
      synopsis = "Provide json instances automagically to vinyl types";
      description = "This adds Data.Aeson FromJSON instances for Simple records";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.vinyl)
          (hsPkgs.bytestring)
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs.hscolour);
        };
      tests = { "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; }; };
      };
    }