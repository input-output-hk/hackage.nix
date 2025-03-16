{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "trace-embrace"; version = "1.0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniil Iaitskov <dyaitskov@gmail.com>";
      author = "Daniil Iaitskov <dyaitskov@gmail.com>";
      homepage = "https://github.com/yaitskov/trace-embrace";
      url = "";
      synopsis = "Smart version of Debug.Trace module";
      description = "Writing tracing code is very boring activity, especially in Haskell. The\n<https://hackage.haskell.org/package/trace-embrace trace-embrace>\npackage minimizes the hassle of writing traces and maintaining them in\ncodebase. Thanks to TH-driven DSL whole chunks of code containing\nfunction arguments could be quickly copy-pasted for tracing without\nmassaging in a text editor.\n\nThere are several issues with functions from standand GHC module\n<https://hackage.haskell.org/package/base/docs/Debug-Trace.html Debug.Trace>:\n\n-   no trace emitting location\n-   tracing expressions solicit to write lot of boilerplate code\n-   not possible to disable tracing without recompilation\n-   tracing is coupled with optimizaiton flag\n-   no per module granularity - all trace messages are disabled all at\n    once\n\nLet’s look how trace-embrace deals with these issues.\n\n== Location\n#location#\n\nTH macros with help of GHC lib, besides the module and the line of\nexrpession emitting a trace message, find function or method name where\nthe expression is.\n\nThe trace message format is customizable through a config file\n(@trace-embrace.yaml@) located next to a cabal one, which is\nautomatically generated if it is missing at build time. The trace line\npattern can include location related fields such as\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:PackageName PackageName>,\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:FullyQualifiedModule FullyQualifiedModule>,\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:ModuleName ModuleName>,\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:FunctionName FunctionName>,\nand\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:LineNumber LineNumber>.\n\n> traceMessage:\n>   traceLinePattern:\n>   - tag: FullyQualifiedModule\n>   - contents: ':'\n>     tag: Delimiter\n>   - tag: FunctionName\n>   - contents: ' '\n>     tag: Delimiter\n>   - tag: LiteralMessage\n>   - tag: Variables\n\nIn a small function, a trace expression, containing only a space\nseparated list of variables, is still very informative, because the rest\nis done by the library based on the expression context and\nconfiguration. The function name gives literal part for tracing. The\nlibrary understands Haskell syntax very well and variables can be\ncopy\\/pasted in bulk “AS-IS” with comments and even pattern matching.\n\n> module Module where\n> fun x (Just y) = $(tr \"/x (Just y)\") $ x + y\n\nThe expression and config from above following trace message is\nproduced:\n\n> Module:fun ; x: 123; y: 777\n\nThe argument of @tr@ consists of literal message and list of variables\nfor tracing. These parts are split by right slash.\n\n== Trace control\n#trace-control#\n\nTrace control has several dimensions.\n\n=== Compile\\/run time\n#compilerun-time#\n\nTracing code generation can be disabled at compile time in the\n<#configuration-file config file> or later at launch runtime via an\nenvironment variable. The variable name depends on configuration and by\ndefault it is a cabal package name (in upper case) prefixed with\n@TRACE_EMBRACE_@.\n\n> mode:\n>   # expand all tracing macros to 'id' or 'pure ()' depending on the context\n>   tag: TraceDisabled\n\n________________________________________________________________________\n\n> mode:\n>   # use Debug.Trace.trace group of functions\n>   tag: TraceStd\n> runtimeLevelsOverrideEnvVar:\n>   # disable runtime configuration\n>   tag: Ignored\n\n________________________________________________________________________\n\nIf the environment variable is not defined then tracing is enabled. If\nthe variable expands to a dash (@-@) then tracing is disabled. Otherwise\nthe variable should contain a path to a file with module prefixes\nspecifing trace levels. Structure of runtime config file is equal to the\nstructure of @levels@ section.\n\n> levels:\n> - '!Data.Map.Strict'     # exclamation mark is warning level\n> - '|Control.Concurrent'  # bar - bottom -> is error level\n> - 'Foo.Bar'              # default is info level\n> - '-'                    # dash is trace level\n> mode:\n>   tag: TraceStd\n> runtimeLevelsOverrideEnvVar:\n>   tag: CapsPackageName   # default\n\n________________________________________________________________________\n\n=== Tracing levels\n#tracing-levels#\n\nBoth Haskell modules and tracing expressions have tracing levels. If\nexpression tracing level is greater or equal to thershold tracing level\nof containing module then the message is emitted. Modules by default\nhave threshold trace and unprefixed literal message has tracing level\ninfo.\n\n> module Module where\n> yes x = $(tr \"!I am emitted/\") x\n> yep x $(tr \"|I am emitted/\") x\n> no x = $(tr \"I am not emitted/\") x\n> nope x = $(tr \"-I am not emitted/\") x\n\n________________________________________________________________________\n\n> levels:\n> - '!Foo'\n> - '-Fo'\n> - '#Foo.Bar'\n\nRuntime tracing level for a module cannot relax compile time tracing\nlevel.\n\nEvery cabal package uses a dedicated envirnonment variable so no\nconflict between dependencies using trace-embarce library is likely\npossible.\n\n=== Trace Sink\n#trace-sink#\n\nBesides\n<https://hackage.haskell.org/package/base/docs/Debug-Trace.html#v:trace Debug.Trace.trace>\nand @\\/dev\\/null@,\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:trIo trIo>,\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:tr tr>\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:tw tw>\nand\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:tw-39- tw\\'>\nfunctions can forward tracing messages to\n<https://hackage.haskell.org/package/base/docs/System-IO.html#v:hPutStrLn hPutStrLn>\nor\n<https://hackage.haskell.org/package/base/docs/Debug-Trace.html#v:traceEvent Debug.Trace.traceEvent>.\n\n> mode:\n>   tag: TraceEvent\n\n________________________________________________________________________\n\n> mode:\n>   sink:\n>     contents: /tmp/log.log\n>     tag: FileSink\n>   tag: TraceUnsafeIo\n\n________________________________________________________________________\n\n> mode:\n>   sink:\n>     tag: StdErrSink\n>   tag: TraceUnsafeIo\n\n==  Configuration file\n#configuration-file#\n\nThe file is generanted on build if missing.\n\n=== Default compile time config file (trace-embrace.yaml)\n#default-compile-time-config-file-trace-embrace.yaml#\n\n> levels:\n> - '-'\n> mode:\n>   tag: TraceStd\n> runtimeLevelsOverrideEnvVar:\n>   tag: CapsPackageName\n> traceMessage:\n>   entrySeparator: '; '\n>   keyValueSeparator: ': '\n>   retValPrefix: ' => '\n>   traceLinePattern:\n>   - tag: FullyQualifiedModule\n>   - contents: '::'\n>     tag: Delimiter\n>   - tag: FunctionName\n>   - contents: ': '\n>     tag: Delimiter\n>   - tag: LiteralMessage\n>   - tag: Variables\n> version: 1\n\n=== Sample of runtime config file\n#sample-of-runtime-config-file#\n\nRuntime config file is also in YAML format, but its structure is way\nsimpler.\n\n> - '-'         # empty prefix set default thershold equal to trace level\n> - '!Foo'\n> - 'Fo'\n> - '#Foo.Bar'  # threshold higher than error - disable tracing expression\n\nPassing runtime config to @foo-bar.cabal@:\n\n> TRACE_EMBRACE_FOO_BAR=- ./foo        # disable tracing\n> TRACE_EMBRACE_FOO_BAR=rtc.yaml ./foo # override threshold levels\n\nThe variable name can be specified explicitly:\n\n> runtimeLevelsOverrideEnvVar:\n>   tag: EnvironmentVariable\n>   varName: \"FOO_BAR\"\n\n== Examples\n#examples#\n\n=== TH version of traceWith\n#th-version-of-tracewith#\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module Module where\n>\n> import Debug.TraceEmbrace\n>\n> fun :: Int -> Int -> Int -> Int\n> fun x y z = $(tw \"get/x y z\") (x + y + z)\n\nA trace line for the snippet above would be:\n\nModule:fun: 7 get; x: 1; y: 2; z: 3 => 6\n\n=== Trace lazy ByteString structure\n#trace-lazy-bytestring-structure#\n\n<https://hackage.haskell.org/package/bytestring/docs/Data-ByteString-Lazy.html#t:ByteString ByteString>\n@Show@ instance does not show chunks, but it can be important in parser\ndebugging (attoparsec). Value of a type with not enough informative\n@Show@ instance could be wrapped into\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#t:ShowTrace ShowTrace>\nand more detailed @Show@ instance should be provided.\n\n> {-# LANGUAGE OverloadedStrings #-}\n> {-# LANGUAGE TemplateHaskell #-}\n> module Module where\n>\n> import Debug.TraceEmbrace\n> import Data.ByteString.Lazy\n>\n> -- instance Show (ShowTrace ByteString) where\n> --   show ...\n>\n> fun :: ByteString -> ByteString\n> fun bs = $(tr \"get/bs;bs\") bs\n\nA trace line for the snippet above would be:\n\nModule:fun: 11 get; bs: “abc”; bs: [“ab”, “c”]\n\nFor tracing returning values wrapped into\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#t:ShowTrace ShowTrace>\nuse\n<https://hackage.haskell.org/package/trace-embrace/docs/Debug-TraceEmbrace.html#v:tw-39- tw\\'>.\n\n=== Pattern matching syntax\n#pattern-matching-syntax#\n\nTemplate tracing functions support Haskell pattern syntax and comments,\nso function arguments can be quickly copy-pasted as-is:\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module Module where\n>\n> import Debug.TraceEmbrace\n>\n> fun :: Maybe ([Int], Int) -> Int\n> fun v@(Just ([x], {-ignore-} _)) = $(tr \"get/v@(Just ([x], {-ignore-} _))\") x\n> fun _ = 0\n\nA trace line for the snippet above would be:\n\nModule:fun: 7 get; v: 1; x: 1\n\n=== Unlifted vars\n#unlifted-vars#\n\n> {-# LANGUAGE TemplateHaskell #-}\n> {-# LANGUAGE MagicHash #-}\n> module Module where\n>\n> import Debug.TraceEmbrace\n> import GHC.Exts\n>\n> fun :: Int -> Int\n> fun (I# x#) = (I# ($(tr \"get/x#\") x#))\n\nA trace line for the snippet above would be:\n\nModule:fun: 7 get; x#: 1#";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lrucache" or (errorHandler.buildDepError "lrucache"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."haddock-use-refs" or (errorHandler.buildDepError "haddock-use-refs"))
          (hsPkgs."radix-tree" or (errorHandler.buildDepError "radix-tree"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lrucache" or (errorHandler.buildDepError "lrucache"))
            (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lock" or (errorHandler.buildDepError "th-lock"))
            (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }