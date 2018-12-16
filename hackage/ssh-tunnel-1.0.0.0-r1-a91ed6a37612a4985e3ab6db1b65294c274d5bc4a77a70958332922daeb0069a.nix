{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ssh-tunnel";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha <ncrashed@gmail.com>\n, Anatoliy Nardid <nazgul17@gmail.com>";
      homepage = "https://github.com/Teaspot-Studio/ssh-tunnel#readme";
      url = "";
      synopsis = "Proxy http-client via ssh tunnel.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.foldl)
          (hsPkgs.http-client)
          (hsPkgs.managed)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.uuid)
        ];
      };
    };
  }