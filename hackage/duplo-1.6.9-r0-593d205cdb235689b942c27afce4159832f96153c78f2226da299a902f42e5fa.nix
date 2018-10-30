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
        name = "duplo";
        version = "1.6.9";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ken@pixbi.com";
      author = "Kenneth Kan";
      homepage = "";
      url = "";
      synopsis = "Frontend development build tool";
      description = "Intuitive, simple building blocks for building composable, completely self-managed web applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.executable-path)
          (hsPkgs.filepath)
          (hsPkgs.filepather)
          (hsPkgs.fsnotify)
          (hsPkgs.http-types)
          (hsPkgs.language-javascript)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.scotty)
          (hsPkgs.shake)
          (hsPkgs.system-fileio)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "duplo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.duplo)
            (hsPkgs.filepath)
            (hsPkgs.filepather)
            (hsPkgs.fsnotify)
            (hsPkgs.http-types)
            (hsPkgs.language-javascript)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.scotty)
            (hsPkgs.shake)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.duplo)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }