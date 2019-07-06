{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "imgur"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Dmitry Ivanov <ethercrow@gmail.com>";
      author = "";
      homepage = "https://github.com/ethercrow/imgur#readme";
      url = "";
      synopsis = "A function to post an image to imgur";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.req)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-lens)
          ];
        };
      };
    }