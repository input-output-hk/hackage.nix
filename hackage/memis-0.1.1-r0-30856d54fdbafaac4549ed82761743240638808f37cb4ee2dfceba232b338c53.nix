{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "memis"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/memis";
      url = "";
      synopsis = "Memis Efficient Manual Image Sorting";
      description = "Memis allows to efficiently rename and sort image files into directories, via an intelligent web-interface.\n\nSee <https://github.com/johannesgerer/memis Readme> on Github.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "memis" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.mime-types)
            (hsPkgs.process)
            (hsPkgs.process-extras)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.simple)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }