default:
	cd rust; cargo build
	cp rust/target/librust_example-*.a ruby/ext/rust_example/librust_example.a
	cd ruby/ext/rust_example; ruby extconf.rb; make clean; make
	cd ruby; ruby -Ilib:ext -r rust_example -e "RustExample.hello"
