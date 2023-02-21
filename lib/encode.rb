def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  # p "First we have #{cipher}" # + nil can't be coerced into integer
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
    # p "Then we have #{ciphertext_chars}"
    # + nil can't be coerced into integer
  end
  # p "We should have #{ciphertext_chars}"
  return ciphertext_chars.join
  
end

# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")

puts encode("theswiftfoxjumpedoverthela", "secretkey")
# Expected: EMBAXNKEKSYOVQTBJSWBDEMBPH
# The error kicks in at z and Z

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end



# puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"