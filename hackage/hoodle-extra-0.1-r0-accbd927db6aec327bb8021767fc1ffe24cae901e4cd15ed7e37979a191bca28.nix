{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-extra"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "extra hoodle tools";
      description = "extra hoodle tools";
      buildType = "Custom";
      };
    components = {
      exes = {
        "networkedit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.network-simple)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        "idfilepathdb" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.pureMD5)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hoodle-types)
            (hsPkgs.hoodle-parser)
            (hsPkgs.xournal-parser)
            ];
          };
        };
      };
    }