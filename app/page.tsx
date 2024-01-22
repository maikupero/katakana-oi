'use client'
import { Input } from '@mui/material'
import { useEffect, useState } from 'react'
import { Entry, Username } from '../types/types'
import { GET } from './api/user/[user]/route';

export default function Home() {
  const [entries, setEntries] = useState<Entry[]>([]);
  const [username, setUsername] = useState<Username>('');

  useEffect(() => {
    const hitTheBackEnd = async () => {
      const retrievedFromBackend = await GET(1);
      console.log(retrievedFromBackend);
    }
    hitTheBackEnd();
  })
  
  return (
    <div>
      <h1>Hello</h1>
      <Input style={{width: 500, backgroundColor: 'beige'}} title='hey?' />
    </div>
  )
}
