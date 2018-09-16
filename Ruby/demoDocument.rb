print <<EOF         # Document simple program
    This is ruby program.
    run it.
EOF

print <<"EOF";            # Same as above code
    This is second line of code  
    Also run it.
EOF

print <<'EOC'
    echo hi here
    echo lo here
EOC
        
print <<"foo", <<"bar" 
    I said foo
foo
    I said bar
bar
