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
      specVersion = "1.2";
      identifier = {
        name = "hack2-handler-mongrel2-http";
        version = "2011.10.31";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-handler-mongrel2-http";
      url = "";
      synopsis = "Hack2 Mongrel2 HTTP handler";
      description = "Hack2 Mongrel2 HTTP handler";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack2)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.enumerator)
          (hsPkgs.air)
          (hsPkgs.zeromq-haskell)
          (hsPkgs.directory)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.blaze-textual)
          (hsPkgs.blaze-builder)
          (hsPkgs.unix)
          (hsPkgs.attoparsec)
          (hsPkgs.stm)
        ];
      };
    };
  }