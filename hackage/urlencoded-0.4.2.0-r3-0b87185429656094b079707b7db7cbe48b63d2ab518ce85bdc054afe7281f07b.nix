{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "urlencoded"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "francygazz@gmail.com";
      author = "Josh Hoyt, Philip Weaver";
      homepage = "https://github.com/fgaz/urlencoded";
      url = "";
      synopsis = "Generate or process x-www-urlencoded data";
      description = "Generate or process x-www-urlencoded data as it\nappears in HTTP or HTTPS URIs and HTTP POSTs. See\n<http://www.w3.org/TR/html401/interact/forms.html#h-17.13.4.1>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.split) ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.urlencoded)
            ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
          };
        };
      };
    }