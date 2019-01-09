{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-snap"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com imalsogreg@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni, Greg Hale";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "Interpret a Servant API as a Snap server, using any Snaplets you like.\n\nYou can learn about the basics of servant in the Servant <https://haskell-servant.readthedocs.io tutorial>, and about the basics of Snap at the Snaplets <http://snapframework.com/docs/tutorials/snaplets-tutorial tutorial>\n\n<https://github.com/haskell-servant/servant-snap/blob/master/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package. One route delegates to the <https://hackage.haskell.org/package/snap/docs/Snap-Snaplet-Auth.html Auth> snaplet, another delegates to <https://hackage.haskell.org/package/snap/docs/Snap-Snaplet-Heist.html Heist>.\n\n<https://github.com/haskell-servant/servant-snap/blob/master/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.http-api-data)
          (hsPkgs.io-streams)
          (hsPkgs.network-uri)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.servant)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "snap-greet" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.either)
            (hsPkgs.errors)
            (hsPkgs.heist)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-snap)
            (hsPkgs.map-syntax)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.digestive-functors)
            (hsPkgs.time)
            (hsPkgs.hspec-snap)
            (hsPkgs.hspec-core)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.parsec)
            (hsPkgs.servant)
            (hsPkgs.servant-snap)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.string-conversions)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }