{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "haskus-web"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2019";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org";
      url = "";
      synopsis = "Haskus web";
      description = "Haskus web related modules";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskus-utils-compat)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.clay)
          (hsPkgs.lucid)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-server-tls)
          ];
        };
      };
    }