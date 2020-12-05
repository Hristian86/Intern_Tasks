// задача 10: имате 3 купчини от чипове за казино - бели,
// зелени и черни. всяка купчина съдръжа само чипове от един цвят
// всеки ден вземате само 2 чипа от различни купчини и отивате да играете в казиното.
// може да вземете от произволен цват, но нямате право да вемате повече от 1 чип от купчина.
// напишете функция, която при даден масив от числа,
// всяко от което показва колко чипа има от всеки цвят да връща максималния брой дни
// които можете да играете в казиното, като всеки ден може да вземате точно 2 чипа.

func casinoBalans(_ chipses: [Int]) -> Int {
    var chips = chipses.sorted(by: >)
    var allChips = chips.count - 1;
    var uChips = Dictionary<Int, Int>();
    var targetSum = 0

    // Find the 3 piles of chips : it will work with any pile count.
    while allChips >= 0 {
        uChips[allChips] = chips[allChips];
        targetSum += chips[allChips]
        allChips -= 1;
    }

    var daysInCasino = 0;
    var i = targetSum;
    while (targetSum % 2 == 0 && targetSum >= 2 && i > 0) || (targetSum % 2 != 0 && targetSum >= 1 && i > 0) {
        var taken = 0;
        
        for s in 0..<uChips.count {
            let usedChiips = uChips[s] ?? 0;
                
            if usedChiips > 0{
                var count = uChips[s] ?? 0
                count -= 1;
                uChips[s] = count;
                targetSum -= 1;
                i -= 1;
                taken += 1;
            }

            if taken == 2 {
                daysInCasino += 1;
                break
            }
        }

        if taken == 2 {
            
        }
    }
    
    return daysInCasino;
}

var chips = [5,2,3]
let res = casinoBalans(chips)
let display = res == 1 ? "the amount of chips will be enough for one day" : "the amount of chips will be enough for \(res) days"
print(display);