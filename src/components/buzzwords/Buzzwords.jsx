import './buzzwords.css'
import {motion} from 'framer-motion'

// class buzzwordList {
//   constructor(buzzwords) {
//     this.buzzwords = buzzwords;
//   }
// }

// const myBuzzwordList = new buzzwordList([
//   "Apple", "Banana", "Pear"
// ]);

export default function Buzzwords() {
  

  
  const buzzwordList = ["React", "Css", "Javascript", "HTML", "Node.js", "Npm", "Git", "Jest", "Webpack", "JSON", "AJAX", "SEO", "Photoshop", "Illustrator", "Inkscape", "REST", "ES6", "UI/UX", "Wordpress", "Framer Motion"]

  const sortedBuzzwordList = alphabetize(buzzwordList);

  return (
    <>
       {sortedBuzzwordList.map((word) => (
      <p key={word}>{word}</p>
      ))}
    </>
  )
}

function alphabetize(wordList) {
 return wordList.sort();
}