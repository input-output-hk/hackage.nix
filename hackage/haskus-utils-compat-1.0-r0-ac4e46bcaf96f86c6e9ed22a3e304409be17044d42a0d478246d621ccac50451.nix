{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "haskus-utils-compat"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2019";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://docs.haskus.org/";
      url = "";
      synopsis = "Compatibility modules with other external packages (ByteString, etc.)";
      description = "Compatibility modules with other external packages (ByteString, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskus-binary)
          (hsPkgs.haskus-utils-data)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          ];
        };
      };
    }