complete -c forc -n "__fish_use_subcommand" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_use_subcommand" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_use_subcommand" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_use_subcommand" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_use_subcommand" -s V -l version -d 'Print version'
complete -c forc -n "__fish_use_subcommand" -f -a "addr2line" -d 'Show location and context of an opcode address in its source file'
complete -c forc -n "__fish_use_subcommand" -f -a "build" -d 'Compile the current or target project'
complete -c forc -n "__fish_use_subcommand" -f -a "check" -d 'Check the current or target project and all of its dependencies for errors'
complete -c forc -n "__fish_use_subcommand" -f -a "clean" -d 'Removes the default forc compiler output artifact directory, i.e. `<project-name>/out`'
complete -c forc -n "__fish_use_subcommand" -f -a "completions" -d 'Generate tab-completion scripts for your shell'
complete -c forc -n "__fish_use_subcommand" -f -a "new" -d 'Create a new Forc project at `<path>`'
complete -c forc -n "__fish_use_subcommand" -f -a "init" -d 'Create a new Forc project in an existing directory'
complete -c forc -n "__fish_use_subcommand" -f -a "parse-bytecode" -d 'Parse bytecode file into a debug format'
complete -c forc -n "__fish_use_subcommand" -f -a "test" -d 'Run the Sway unit tests for the current project'
complete -c forc -n "__fish_use_subcommand" -f -a "update" -d 'Update dependencies in the Forc dependencies directory'
complete -c forc -n "__fish_use_subcommand" -f -a "plugins" -d 'List all forc plugins'
complete -c forc -n "__fish_use_subcommand" -f -a "template" -d 'Create a new Forc project from a git template'
complete -c forc -n "__fish_use_subcommand" -f -a "contract-id" -d 'Determine contract-id for a contract. For workspaces outputs all contract ids in the workspace'
complete -c forc -n "__fish_use_subcommand" -f -a "predicate-root" -d 'Determine predicate-root for a predicate. For workspaces outputs all predicate roots in the workspace'
complete -c forc -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s S -l search-dir -d 'Where to search for the project root' -r -F
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s g -l sourcemap-path -d 'Source file mapping in JSON format' -r -F
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s c -l context -d 'How many lines of context to show' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s i -l opcode-index -d 'Opcode index' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from addr2line" -s h -l help -d 'Print help'
complete -c forc -n "__fish_seen_subcommand_from build" -s p -l path -d 'Path to the project' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l output-directory -d 'The directory in which Forc output artifacts are placed' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l ipfs-node -d 'The IPFS node to use for fetching IPFS sources' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l dca-graph -d 'Print the computed Sway DCA (Dead Code Analysis) graph' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l dca-graph-url-format -d 'URL format to be used in the generated DCA graph .dot file.' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l asm -d 'Print the generated ASM (assembler).' -r -f -a "{virtual	'',allocated	'',abstract	'',final	'',all	''}"
complete -c forc -n "__fish_seen_subcommand_from build" -l ir -d 'Print the generated Sway IR (Intermediate Representation).' -r -f -a "{initial	'',final	'',all	'',modified	'',inline	'',simplify-cfg	'',sroa	'',dce	'',fn-dce	'',fn-dedup-release	'',fn-dedup-debug	'',mem2reg	'',memcpyopt	'',const-folding	'',arg-demotion	'',const-demotion	'',ret-demotion	'',misc-demotion	''}"
complete -c forc -n "__fish_seen_subcommand_from build" -l metrics-outfile -d 'Output compilation metrics into the specified file' -r
complete -c forc -n "__fish_seen_subcommand_from build" -s o -l output-bin -d 'Create a binary file at the provided path representing the final bytecode' -r
complete -c forc -n "__fish_seen_subcommand_from build" -s g -l output-debug -d 'Create a file at the provided path containing debug information' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l build-profile -d 'The name of the build profile to use' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l build-target -d 'Build target to use for code generation' -r -f -a "{fuel	'',evm	'',midenvm	''}"
complete -c forc -n "__fish_seen_subcommand_from build" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from build" -l offline -d 'Offline mode'
complete -c forc -n "__fish_seen_subcommand_from build" -s t -l terse -d 'Terse mode'
complete -c forc -n "__fish_seen_subcommand_from build" -l locked -d 'Requires that the Forc.lock file is up-to-date'
complete -c forc -n "__fish_seen_subcommand_from build" -l json-abi-with-callpaths -d 'Outputs JSON ABI with callpaths instead of only names for structs and enums'
complete -c forc -n "__fish_seen_subcommand_from build" -l ast -d 'Print the generated Sway AST (Abstract Syntax Tree)'
complete -c forc -n "__fish_seen_subcommand_from build" -l bytecode -d 'Print the bytecode'
complete -c forc -n "__fish_seen_subcommand_from build" -l time-phases -d 'Output the time elapsed over each part of the compilation process'
complete -c forc -n "__fish_seen_subcommand_from build" -l reverse-order -d 'Output build errors and warnings in reverse order'
complete -c forc -n "__fish_seen_subcommand_from build" -l json-abi -d 'Minify JSON ABI files'
complete -c forc -n "__fish_seen_subcommand_from build" -l json-storage-slots -d 'Minify JSON storage slot files'
complete -c forc -n "__fish_seen_subcommand_from build" -l release -d 'Use the release build profile'
complete -c forc -n "__fish_seen_subcommand_from build" -l error-on-warnings -d 'Treat warnings as errors'
complete -c forc -n "__fish_seen_subcommand_from build" -l tests -d 'Also build all tests within the project'
complete -c forc -n "__fish_seen_subcommand_from build" -l no-encoding-v1 -d 'Disable the "new encoding" feature'
complete -c forc -n "__fish_seen_subcommand_from build" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from build" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from build" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from build" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from check" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from check" -l ipfs-node -d 'The IPFS Node to use for fetching IPFS sources' -r
complete -c forc -n "__fish_seen_subcommand_from check" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from check" -l offline -d 'Offline mode, prevents Forc from using the network when managing dependencies. Meaning it will only try to use previously downloaded dependencies'
complete -c forc -n "__fish_seen_subcommand_from check" -l locked -d 'Requires that the Forc.lock file is up-to-date. If the lock file is missing, or it needs to be updated, Forc will exit with an error'
complete -c forc -n "__fish_seen_subcommand_from check" -s t -l terse -d 'Terse mode. Limited warning and error output'
complete -c forc -n "__fish_seen_subcommand_from check" -l disable-tests -d 'Disable checking unit tests'
complete -c forc -n "__fish_seen_subcommand_from check" -l no-encoding-v1 -d 'Disable the "new encoding" feature'
complete -c forc -n "__fish_seen_subcommand_from check" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from check" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from check" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from check" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from clean" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from clean" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from clean" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from clean" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from clean" -s h -l help -d 'Print help'
complete -c forc -n "__fish_seen_subcommand_from clean" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from completions" -s T -l target -d 'Specify shell to enable tab-completion for' -r -f -a "{bash	'Bourne Again Shell (bash)',elvish	'Elvish shell',fish	'Friendly Interactive Shell (fish)',power-shell	'PowerShell',zsh	'Z Shell (zsh)',fig	'Fig'}"
complete -c forc -n "__fish_seen_subcommand_from completions" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from completions" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from completions" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from completions" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from new" -l name -d 'Set the package name. Defaults to the directory name' -r
complete -c forc -n "__fish_seen_subcommand_from new" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from new" -l contract -d 'The default program type. Excluding all flags or adding this flag creates a basic contract program'
complete -c forc -n "__fish_seen_subcommand_from new" -l script -d 'Adding this flag creates an empty script program'
complete -c forc -n "__fish_seen_subcommand_from new" -l predicate -d 'Adding this flag creates an empty predicate program'
complete -c forc -n "__fish_seen_subcommand_from new" -l library -d 'Adding this flag creates an empty library program'
complete -c forc -n "__fish_seen_subcommand_from new" -l workspace -d 'Adding this flag creates an empty workspace'
complete -c forc -n "__fish_seen_subcommand_from new" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from new" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from new" -s h -l help -d 'Print help'
complete -c forc -n "__fish_seen_subcommand_from new" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from init" -l path -d 'The directory in which the forc project will be initialized' -r
complete -c forc -n "__fish_seen_subcommand_from init" -l name -d 'Set the package name. Defaults to the directory name' -r
complete -c forc -n "__fish_seen_subcommand_from init" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from init" -l contract -d 'The default program type, excluding all flags or adding this flag creates a basic contract program'
complete -c forc -n "__fish_seen_subcommand_from init" -l script -d 'Create a package with a script target (src/main.sw)'
complete -c forc -n "__fish_seen_subcommand_from init" -l predicate -d 'Create a package with a predicate target (src/predicate.rs)'
complete -c forc -n "__fish_seen_subcommand_from init" -l library -d 'Create a package with a library target (src/lib.sw)'
complete -c forc -n "__fish_seen_subcommand_from init" -l workspace -d 'Adding this flag creates an empty workspace'
complete -c forc -n "__fish_seen_subcommand_from init" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from init" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from init" -s h -l help -d 'Print help'
complete -c forc -n "__fish_seen_subcommand_from init" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s h -l help -d 'Print help'
complete -c forc -n "__fish_seen_subcommand_from parse-bytecode" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from test" -s p -l path -d 'Path to the project' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l output-directory -d 'The directory in which Forc output artifacts are placed' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l ipfs-node -d 'The IPFS node to use for fetching IPFS sources' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l dca-graph -d 'Print the computed Sway DCA (Dead Code Analysis) graph' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l dca-graph-url-format -d 'URL format to be used in the generated DCA graph .dot file.' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l asm -d 'Print the generated ASM (assembler).' -r -f -a "{virtual	'',allocated	'',abstract	'',final	'',all	''}"
complete -c forc -n "__fish_seen_subcommand_from test" -l ir -d 'Print the generated Sway IR (Intermediate Representation).' -r -f -a "{initial	'',final	'',all	'',modified	'',inline	'',simplify-cfg	'',sroa	'',dce	'',fn-dce	'',fn-dedup-release	'',fn-dedup-debug	'',mem2reg	'',memcpyopt	'',const-folding	'',arg-demotion	'',const-demotion	'',ret-demotion	'',misc-demotion	''}"
complete -c forc -n "__fish_seen_subcommand_from test" -l metrics-outfile -d 'Output compilation metrics into the specified file' -r
complete -c forc -n "__fish_seen_subcommand_from test" -s o -l output-bin -d 'Create a binary file at the provided path representing the final bytecode' -r
complete -c forc -n "__fish_seen_subcommand_from test" -s g -l output-debug -d 'Create a file at the provided path containing debug information' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l build-profile -d 'The name of the build profile to use' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l build-target -d 'Build target to use for code generation' -r -f -a "{fuel	'',evm	'',midenvm	''}"
complete -c forc -n "__fish_seen_subcommand_from test" -l test-threads -d 'Number of threads to utilize when running the tests. By default, this is the number of threads available in your system' -r
complete -c forc -n "__fish_seen_subcommand_from test" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from test" -l offline -d 'Offline mode'
complete -c forc -n "__fish_seen_subcommand_from test" -s t -l terse -d 'Terse mode'
complete -c forc -n "__fish_seen_subcommand_from test" -l locked -d 'Requires that the Forc.lock file is up-to-date'
complete -c forc -n "__fish_seen_subcommand_from test" -l json-abi-with-callpaths -d 'Outputs JSON ABI with callpaths instead of only names for structs and enums'
complete -c forc -n "__fish_seen_subcommand_from test" -l ast -d 'Print the generated Sway AST (Abstract Syntax Tree)'
complete -c forc -n "__fish_seen_subcommand_from test" -l bytecode -d 'Print the bytecode'
complete -c forc -n "__fish_seen_subcommand_from test" -l time-phases -d 'Output the time elapsed over each part of the compilation process'
complete -c forc -n "__fish_seen_subcommand_from test" -l reverse-order -d 'Output build errors and warnings in reverse order'
complete -c forc -n "__fish_seen_subcommand_from test" -l json-abi -d 'Minify JSON ABI files'
complete -c forc -n "__fish_seen_subcommand_from test" -l json-storage-slots -d 'Minify JSON storage slot files'
complete -c forc -n "__fish_seen_subcommand_from test" -l release -d 'Use the release build profile'
complete -c forc -n "__fish_seen_subcommand_from test" -l error-on-warnings -d 'Treat warnings as errors'
complete -c forc -n "__fish_seen_subcommand_from test" -s r -l pretty-print -d 'Pretty-print the logs emitted from tests'
complete -c forc -n "__fish_seen_subcommand_from test" -s l -l logs -d 'Print `Log` and `LogData` receipts for tests'
complete -c forc -n "__fish_seen_subcommand_from test" -s d -l decode -d 'Decode logs and show decoded log information in human readable format alongside the raw logs'
complete -c forc -n "__fish_seen_subcommand_from test" -l filter-exact -d 'When specified, only the test exactly matching the given string will be executed'
complete -c forc -n "__fish_seen_subcommand_from test" -l no-encoding-v1 -d 'Disable the "new encoding" feature'
complete -c forc -n "__fish_seen_subcommand_from test" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from test" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from test" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from test" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from update" -s p -l path -d 'Path to the project, if not specified, current working directory will be used' -r
complete -c forc -n "__fish_seen_subcommand_from update" -s d -d 'Dependency to be updated. If not set, all dependencies will be updated' -r
complete -c forc -n "__fish_seen_subcommand_from update" -l ipfs-node -d 'The IPFS Node to use for fetching IPFS sources' -r
complete -c forc -n "__fish_seen_subcommand_from update" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from update" -s c -l check -d 'Checks if the dependencies have newer versions. Won\'t actually perform the update, will output which ones are up-to-date and outdated'
complete -c forc -n "__fish_seen_subcommand_from update" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from update" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from update" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from update" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from plugins" -s p -l paths -d 'Prints the absolute path to each discovered plugin'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s d -l describe -d 'Prints the long description associated with each listed plugin'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from plugins" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from template" -s u -l url -d 'The template url, should be a git repo' -r
complete -c forc -n "__fish_seen_subcommand_from template" -s t -l template-name -d 'The name of the template that needs to be fetched and used from git repo provided' -r
complete -c forc -n "__fish_seen_subcommand_from template" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from template" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from template" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from template" -s h -l help -d 'Print help'
complete -c forc -n "__fish_seen_subcommand_from template" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s p -l path -d 'Path to the project' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l output-directory -d 'The directory in which Forc output artifacts are placed' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l ipfs-node -d 'The IPFS node to use for fetching IPFS sources' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l dca-graph -d 'Print the computed Sway DCA (Dead Code Analysis) graph' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l dca-graph-url-format -d 'URL format to be used in the generated DCA graph .dot file.' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l asm -d 'Print the generated ASM (assembler).' -r -f -a "{virtual	'',allocated	'',abstract	'',final	'',all	''}"
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l ir -d 'Print the generated Sway IR (Intermediate Representation).' -r -f -a "{initial	'',final	'',all	'',modified	'',inline	'',simplify-cfg	'',sroa	'',dce	'',fn-dce	'',fn-dedup-release	'',fn-dedup-debug	'',mem2reg	'',memcpyopt	'',const-folding	'',arg-demotion	'',const-demotion	'',ret-demotion	'',misc-demotion	''}"
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l metrics-outfile -d 'Output compilation metrics into the specified file' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s o -l output-bin -d 'Create a binary file at the provided path representing the final bytecode' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s g -l output-debug -d 'Create a file at the provided path containing debug information' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l build-profile -d 'The name of the build profile to use' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l salt -d 'Added salt used to derive the contract ID' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l offline -d 'Offline mode'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s t -l terse -d 'Terse mode'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l locked -d 'Requires that the Forc.lock file is up-to-date'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l json-abi-with-callpaths -d 'Outputs JSON ABI with callpaths instead of only names for structs and enums'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l json-abi -d 'Minify JSON ABI files'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l json-storage-slots -d 'Minify JSON storage slot files'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l ast -d 'Print the generated Sway AST (Abstract Syntax Tree)'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l bytecode -d 'Print the bytecode'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l time-phases -d 'Output the time elapsed over each part of the compilation process'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l reverse-order -d 'Output build errors and warnings in reverse order'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l release -d 'Use the release build profile'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l error-on-warnings -d 'Treat warnings as errors'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -l no-encoding-v1 -d 'Disable the "new encoding" feature'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from contract-id" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s p -l path -d 'Path to the project' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l output-directory -d 'The directory in which Forc output artifacts are placed' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l ipfs-node -d 'The IPFS node to use for fetching IPFS sources' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l dca-graph -d 'Print the computed Sway DCA (Dead Code Analysis) graph' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l dca-graph-url-format -d 'URL format to be used in the generated DCA graph .dot file.' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l asm -d 'Print the generated ASM (assembler).' -r -f -a "{virtual	'',allocated	'',abstract	'',final	'',all	''}"
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l ir -d 'Print the generated Sway IR (Intermediate Representation).' -r -f -a "{initial	'',final	'',all	'',modified	'',inline	'',simplify-cfg	'',sroa	'',dce	'',fn-dce	'',fn-dedup-release	'',fn-dedup-debug	'',mem2reg	'',memcpyopt	'',const-folding	'',arg-demotion	'',const-demotion	'',ret-demotion	'',misc-demotion	''}"
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l metrics-outfile -d 'Output compilation metrics into the specified file' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s o -l output-bin -d 'Create a binary file at the provided path representing the final bytecode' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s g -l output-debug -d 'Create a file at the provided path containing debug information' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l build-profile -d 'The name of the build profile to use' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s L -l log-level -d 'Set the log level' -r
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l offline -d 'Offline mode'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s t -l terse -d 'Terse mode'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l locked -d 'Requires that the Forc.lock file is up-to-date'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l json-abi-with-callpaths -d 'Outputs JSON ABI with callpaths instead of only names for structs and enums'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l json-abi -d 'Minify JSON ABI files'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l json-storage-slots -d 'Minify JSON storage slot files'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l ast -d 'Print the generated Sway AST (Abstract Syntax Tree)'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l bytecode -d 'Print the bytecode'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l time-phases -d 'Output the time elapsed over each part of the compilation process'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l reverse-order -d 'Output build errors and warnings in reverse order'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l release -d 'Use the release build profile'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l error-on-warnings -d 'Treat warnings as errors'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -l no-encoding-v1 -d 'Disable the "new encoding" feature'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s v -l verbose -d 'Use verbose output'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s s -l silent -d 'Silence all output'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c forc -n "__fish_seen_subcommand_from predicate-root" -s V -l version -d 'Print version'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "addr2line" -d 'Show location and context of an opcode address in its source file'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "build" -d 'Compile the current or target project'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "check" -d 'Check the current or target project and all of its dependencies for errors'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "clean" -d 'Removes the default forc compiler output artifact directory, i.e. `<project-name>/out`'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "completions" -d 'Generate tab-completion scripts for your shell'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "new" -d 'Create a new Forc project at `<path>`'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "init" -d 'Create a new Forc project in an existing directory'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "parse-bytecode" -d 'Parse bytecode file into a debug format'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "test" -d 'Run the Sway unit tests for the current project'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "update" -d 'Update dependencies in the Forc dependencies directory'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "plugins" -d 'List all forc plugins'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "template" -d 'Create a new Forc project from a git template'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "contract-id" -d 'Determine contract-id for a contract. For workspaces outputs all contract ids in the workspace'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "predicate-root" -d 'Determine predicate-root for a predicate. For workspaces outputs all predicate roots in the workspace'
complete -c forc -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from addr2line; and not __fish_seen_subcommand_from build; and not __fish_seen_subcommand_from check; and not __fish_seen_subcommand_from clean; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from new; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from parse-bytecode; and not __fish_seen_subcommand_from test; and not __fish_seen_subcommand_from update; and not __fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from template; and not __fish_seen_subcommand_from contract-id; and not __fish_seen_subcommand_from predicate-root; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
