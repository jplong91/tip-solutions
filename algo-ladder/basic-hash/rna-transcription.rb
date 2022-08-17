### Question
#
# Given a DNA strand, return its RNA complement (per RNA transcription).
#
# Here is the pattern to follow:
#
# G becomes C
# C becomes G
# T becomes A
# A becomes U
#
# Input -> string
# Output -> string (of same length)
#
# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'
#

### Pseudocode
#
# create a method -> only_popular_posts, accepts a "posts" input array
# create a hashmap for the "nucleotide_pairs"
# create an "output_rna" empty string variable
#
# implement an `each_char` loop (there are several loop alternatives however)
#  -> add the hashmap value, found by the `each_char` iterator as the key, to 'output_rna'
#
# return 'output_rna'
#

def transcribe_rna(dna_strand)
  nucleotide_pairs = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }
  output_rna = ''

  dna_strand.each_char do |nucleotide|
    output_rna << nucleotide_pairs[nucleotide]
  end

  return output_rna
end

p transcribe_rna('ACGTGGTCTTAA') #=> 'UGCACCAGAAUU'

### Final Form
#

def transcribe_rna_ii(dna_strand)
  nucleotide_pairs = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }

  dna_strand
    .chars
    .map { |nucleotide| nucleotide_pairs[nucleotide] }
    .join
end

p transcribe_rna_ii('ACGTGGTCTTAA') #=> 'UGCACCAGAAUU'
