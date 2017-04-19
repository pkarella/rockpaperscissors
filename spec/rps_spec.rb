require('rspec')
require('rps')
describe('String#iswinner') do
  it("returns true if rock is the object and s is the argument") do
    expect("rock".iswinner("scissors")).to(eq('true'))
  end
  it("returns true if s is the object and paper is the argument") do
    expect("scissors".iswinner("paper")).to(eq('true'))
  end
  it("returns true if p is the object and r is the argument") do
    expect("paper".iswinner("rock")).to(eq('true'))
  end
  it("returns draw if rock is the object and r is the argument") do
    expect("rock".iswinner("rock")).to(eq('draw'))
  end
  it("returns true if s is the object and s is the argument") do
    expect("scissors".iswinner("scissors")).to(eq('draw'))
  end
  it("returns true if p is the object and p is the argument") do
    expect("paper".iswinner("paper")).to(eq('draw'))
  end
  it("returns true if paper is the object and s is the argument") do
    expect("paper".iswinner("scissors")).to(eq('false'))
  end
  it("returns true if rock is the object and p is the argument") do
    expect("rock".iswinner("paper")).to(eq('false'))
  end
  it("returns true if s is the object and r is the argument") do
    expect("scissors".iswinner("rock")).to(eq('false'))
  end
end
