{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Delta-Lambda";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2016 James M\nPermission is hereby granted, free of charge, to any person obtaining\na copy of this software and associated documentation files (the\n\"Software\"), to deal in the Software without restriction, including\nwithout limitation the rights to use, copy, modify, merge, publish,\ndistribute, sublicense, and/or sell copies of the Software, and to\npermit persons to whom the Software is furnished to do so, subject to\nthe following conditions:\nThe above copyright notice and this permission notice shall be included\nin all copies or substantial portions of the Software.\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\nEXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\nMERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.\nIN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY\nCLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,\nTORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE\nSOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.";
      maintainer = "listofoptions@gmail.com";
      author = "James M";
      homepage = "https://github.com/listofoptions/delta-lambda";
      url = "";
      synopsis = "A demonstration interpreter for type system delta-lambda (of N.G. De-bruijn)";
      description = "A demonstration package for the type system delta-lambda (of N.G. De-bruijn)\nin ~1000 lines of haskell.\nthis is at the moment exceptionally ALPHA level software.\nno tests for the validity of the type checker (only the\ntype synthesizer), or the parser, or the repl, etc...\nthere are dragons in here (soon to be tamed), and lots\nof them!\ntodo: profiling, unit testing, formal verification of type correctness\nadequacy proof of the implemented type system.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Delta-Lambda" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cpphs)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.options)
            (hsPkgs.parallel)
            (hsPkgs.text)
            (hsPkgs.wl-pprint)
          ];
        };
      };
    };
  }