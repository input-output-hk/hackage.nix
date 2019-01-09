{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "parse-help"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://github.com/gregwebs/cmdargs-help";
      url = "";
      synopsis = "generate command line arguments from a --help output";
      description = "see http://github.com/gregwebs/cmdargs-help";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.attoparsec)
          (hsPkgs.th-lift)
          (hsPkgs.text)
          (hsPkgs.file-location)
          (hsPkgs.template-haskell)
          ];
        };
      tests = { "test" = { depends = [ (hsPkgs.cmdargs) ]; }; };
      };
    }