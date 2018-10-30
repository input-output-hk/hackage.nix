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
        name = "ghcjs-codemirror";
        version = "0.0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish.K.Mackenzie@gmail.com";
      author = "";
      homepage = "https://github.com/ghcjs/CodeMirror";
      url = "";
      synopsis = "Installs CodeMirror JavaScript files";
      description = "CodeMirror is a versatile text editor implemented in\nJavaScript for the browser. It is specialized for\nediting code, and comes with a number of language modes\nand addons that implement more advanced editing\nfunctionaly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }